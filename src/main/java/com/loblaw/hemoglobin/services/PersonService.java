package com.loblaw.hemoglobin.services;

import java.util.HashMap;

import org.springframework.stereotype.Service;

import com.loblaw.hemoglobin.entities.Person;

@Service
public class PersonService {

    private HashMap<Integer,Person> map = new HashMap<>();
    private int currentId=0;

    public Person getById(int id) {
        return map.get(id);
    }

    public int add(Person p) {
        map.put(currentId,p);
        return currentId++;
    }
}
