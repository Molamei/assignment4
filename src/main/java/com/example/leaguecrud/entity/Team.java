package com.example.leaguecrud.entity;

import com.fasterxml.jackson.annotation.JsonBackReference;
import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import java.util.List;

@Setter
@Getter
@ToString
@Entity
@Table(name = "teams")
public class Team {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private int id;
    @Column(name = "name")
    private String name;
    @JsonBackReference
    @ManyToOne
    @JoinColumn(name = "league_id", nullable = false)
    private League league;
    @OneToOne(mappedBy = "team")
    private Coach coach;
    @JsonBackReference
    @OneToMany(mappedBy = "team")
    private List<Player> players;
    @JsonBackReference
    @OneToMany(mappedBy = "homeTeam")
    private List<Match> homeMatches;
    @JsonBackReference
    @OneToMany(mappedBy = "awayTeam")
    private List<Match> awayMatches;
}
