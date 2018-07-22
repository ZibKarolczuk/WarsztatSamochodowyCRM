package pl.coderslab.warsztatsamochodowycrm.model;

public class Order {

    public Order(int id, String register, String details, String owner) {
        this.id = id;
        this.register = register;
        this.details = details;
        this.owner = owner;
    }

    private int id;
    private String register;
    private String details;
    private String owner;

    public int getId() {
        return id;
    }

    public String getRegister() {
        return register;
    }

    public String getDetails() {
        return details;
    }

    public String getOwner() {
        return owner;
    }
}
