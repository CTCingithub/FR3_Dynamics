function Output = SpatialVelocity_3(theta_1, theta_2, theta_3, theta_4, theta_5, theta_6, theta_7, dtheta_1, dtheta_2, dtheta_3, dtheta_4, dtheta_5, dtheta_6, dtheta_7)
    global x_0 y_0 z_0 x_1 y_1 z_1 x_2 y_2 z_2
    global x_3 y_3 z_3 x_4 y_4 z_4 x_5 y_5 z_5
    global x_6 y_6 z_6 x_7 y_7 z_7 x_c1 y_c1 z_c1
    global x_c2 y_c2 z_c2 x_c3 y_c3 z_c3 x_c4 y_c4 z_c4
    global x_c5 y_c5 z_c5 x_c6 y_c6 z_c6 x_c7 y_c7 z_c7
    Output = [
    -dtheta_2.*sin(theta_1) + dtheta_3.*sin(theta_2).*cos(theta_1);
    dtheta_2.*cos(theta_1) + dtheta_3.*sin(theta_1).*sin(theta_2);
    dtheta_1 + dtheta_3.*cos(theta_2);
    y_3.*(dtheta_1.*sin(theta_1).*sin(theta_2) - dtheta_2.*cos(theta_1).*cos(theta_2));
    -y_3.*(dtheta_1.*sin(theta_2).*cos(theta_1) + dtheta_2.*sin(theta_1).*cos(theta_2));
    dtheta_2.*y_3.*sin(theta_2)
    ];
end