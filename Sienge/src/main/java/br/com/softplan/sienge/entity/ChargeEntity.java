package br.com.softplan.sienge.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class ChargeEntity {

    final double WEIGTH = 0.02;
    final double WEIGTH_LIMIT = 5;

    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE)
    private Long idWigth;
    private int weight;
    private double cost;

    public double getCostByWeight(double weight){
        if (weight > WEIGTH_LIMIT){
            return weight * WEIGTH;
        } else{
            return 0;
        }
    }


    public Long getIdWigth() {
        return idWigth;
    }

    public void setIdWigth(Long idWigth) {
        this.idWigth = idWigth;
    }

    public int getWeight() {
        return weight;
    }

    public void setWeight(int weight) {
        this.weight = weight;
    }

    public double getCost() {
        return cost;
    }

    public void setCost(double cost) {
        this.cost = cost;
    }

}
