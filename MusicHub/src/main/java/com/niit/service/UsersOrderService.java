package com.niit.service;

import java.util.List;

import com.niit.model.UsersOrder;

public interface UsersOrderService {

    void addUsersOrder(UsersOrder usersOrder);

    double getUsersOrderGrandTotal(int cid);
}
