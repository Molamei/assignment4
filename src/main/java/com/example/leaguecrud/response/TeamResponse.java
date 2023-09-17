package com.example.leaguecrud.response;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Setter
@Getter
@ToString
public class TeamResponse {
    private int id;
    private String name;
    private int leagueId;
}
