package io.helidon.examples.quickstart.mp;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.*;
import java.util.stream.Collectors;
import javax.enterprise.context.ApplicationScoped;
import javax.inject.Inject;
import javax.inject.Named;
import javax.json.*;
import javax.sql.DataSource;
import javax.ws.rs.*;
import javax.ws.rs.core.MediaType;

@Path("/workout")
@ApplicationScoped
public class WorkoutResource {
    private static final JsonBuilderFactory JSON = Json.createBuilderFactory(Collections.emptyMap());
    private final DataSource dataSource;


    @Inject
    public WorkoutResource(@Named("example") final DataSource dataSource) {
        super();
        this.dataSource = Objects.requireNonNull(dataSource);
    }

    @GET
    @Produces(MediaType.APPLICATION_JSON)
    public JsonObject get(@DefaultValue("") @QueryParam("type") String type,
                          @DefaultValue("10") @QueryParam("limit") int limit) throws SQLException {
        // change SQL query based on the query parameters
        String query = "SELECT * FROM workout.exercise";
        List<String> validTypes = Arrays.asList("bodyweight", "kettlebell", "dumbbell", "arms", "legs", "abdominal", "back", "chest");
        // .filter code adapted from https://stackoverflow.com/a/15824779/9472445
        // .map code adapted from https://stackoverflow.com/a/26768694/9472445
        List<String> filteredTypes = Arrays.stream(type.split(","))
                .filter(s -> validTypes.contains(s.toLowerCase()))
                .map(s -> s.substring(0, 1).toUpperCase() + s.substring(1).toLowerCase())
                .collect(Collectors.toList());

        if (filteredTypes.size() > 0) {
            query = " SELECT DISTINCT exercise_id, name\n" +
                    "FROM workout.exercise\n" +
                    "JOIN workout.exercise_tag USING (exercise_id)\n" +
                    "WHERE tag IN ('" + String.join("','", filteredTypes) + "');";
        }

        List<String> workout = new ArrayList<>();
        Collections.shuffle(workout);
        try (Connection connection = this.dataSource.getConnection();
             PreparedStatement ps = connection.prepareStatement(query);
             ResultSet rs = ps.executeQuery()) {
            while (rs.next()) {
                workout.add(rs.getString("name"));
            }
        }
        Collections.shuffle(workout);
        List<String> randomWorkout = new ArrayList<>();
        for (int i = 0; i < limit; i++) {
            if (i < workout.size() - 1 ) {
                randomWorkout.add(workout.get(i));
            }
        }
        final JsonArrayBuilder builder = JSON.createArrayBuilder();
        randomWorkout.forEach(builder::add);

        final JsonObject returnValue = JSON.createObjectBuilder()
                .add("name", "Generated Workout")
                .add("exercises", builder.build())
                .build();

        return returnValue;
    }

}