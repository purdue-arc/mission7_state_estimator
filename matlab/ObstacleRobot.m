classdef ObstacleRobot < Roomba
    
    properties
        state; %[x, y, theta]
        paused; % Delta T value reflecting how long the obstacle is paused. If its 0 then its not paused 
        collidedThisTimeStep = false;
        robotID;
    end
    
    methods
        function obj = ObstacleRobot(current_state, paused,id)
            obj.state = current_state;
            obj.paused = paused;
            obj.robotID=id;
        end
    end
end

