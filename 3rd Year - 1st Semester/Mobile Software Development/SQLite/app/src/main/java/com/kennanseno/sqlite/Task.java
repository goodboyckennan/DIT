package com.kennanseno.sqlite;

public class Task {
    int id;
    String name;
    String desc;
    int status;

    public Task(){

    }

    public Task(int id, String name, String desc, int status) {
        this.id = id;
        this.name = name;
        this.desc = desc;
        this.status = status;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDesc() {
        return desc;
    }

    public void setDesc(String desc) {
        this.desc = desc;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }
}
