//When bullet collides with enemy plane, destory enemy and bullet
instance_destroy(other);
instance_destroy();

//Add 10 points to score
obj_scoreboard.points += other.scoreValue;
