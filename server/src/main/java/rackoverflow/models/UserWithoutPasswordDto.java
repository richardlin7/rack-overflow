package rackoverflow.models;

public class UserWithoutPasswordDto {
    private int id;
    private String email;

    public static UserWithoutPasswordDto fromUser(User user) {
        return new UserWithoutPasswordDto(user.getId(), (user.getEmail()));
    }

    public UserWithoutPasswordDto(int id, String email) {
        this.id = id;
        this.email = email;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }
}
