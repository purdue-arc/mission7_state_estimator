function [obstacle] = obstaclePause(obstacle,deltaT)
    obstacle.paused = obstacle.paused - deltaT;
end

