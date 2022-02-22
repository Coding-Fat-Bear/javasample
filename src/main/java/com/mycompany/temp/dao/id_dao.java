/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.temp.dao;

import com.mycompany.temp.model.Id;

/**
 *
 * @author AGI03
 */
public class id_dao {
      public Id getId(int aid )
    {
        Id a = new Id();
        a.setId(10);
        a.setUsername("Lijoe");
        a.setPassword("classic123");
        return a;
    }
}
