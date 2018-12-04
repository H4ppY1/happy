package com.h4ppY.happy.service.system;

import com.h4ppY.happy.dto.system.UserDTO;

public interface UserService {
    void add(UserDTO userDTO);
    void delete();
    void update();
    void get();
    boolean isExist(String cellPhone, String userName);
}
