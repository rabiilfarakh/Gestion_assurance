package com.example.entity;

import com.example.enumeration.InsuranceType;
import com.example.enumeration.Status;

import javax.persistence.*;
import java.util.UUID;

@Entity
@Table(name = "quotation")
public class Quotation {

    @Id
    @GeneratedValue
    private UUID id;

    private Integer age;

    @Column(name = "value_of_good")
    private String valueOfGood;

    @Column(name = "history_of_claims")
    private String historyOfClaims;

    @Enumerated(EnumType.STRING)
    private InsuranceType insuranceType;

    @Enumerated(EnumType.STRING)
    private Status status = Status.In_progress;

    @ManyToOne
    @JoinColumn(name = "user_id")
    private User user;


    // Getters and Setters

    public UUID getId() {
        return id;
    }

    public void setId(UUID id) {
        this.id = id;
    }

    public Integer getAge() {
        return age;
    }

    public void setAge(Integer age) {
        this.age = age;
    }

    public String getValueOfGood() {
        return valueOfGood;
    }

    public void setValueOfGood(String valueOfGood) {
        this.valueOfGood = valueOfGood;
    }

    public String getHistoryOfClaims() {
        return historyOfClaims;
    }

    public void setHistoryOfClaims(String historyOfClaims) {
        this.historyOfClaims = historyOfClaims;
    }

    public InsuranceType getInsuranceType() {
        return insuranceType;
    }

    public void setInsuranceType(InsuranceType insuranceType) {
        this.insuranceType = insuranceType;
    }

    public Status getStatus() {
        return status;
    }

    public void setStatus(Status status) {
        this.status = status;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }
}
