#!/usr/bin/bash

SCRIPT = "
function auto_source_ros2_ws() {
    if [ -f "install/setup.bash" ] && [ -f ".auto_source" ]; then
        ws_path=$(pwd)
        source "$ws_path/install/setup.bash"
        echo "already sourced current ws." 
    else
        # 检查是否在 ROS 2 工作区的 src 目录内
        if [ -f "../install/setup.bash" ] && [ -f "../.auto_source" ]; then
            ws_path=$(pwd | sed 's/\/src$//')
            source "$ws_path/install/setup.bash"
            echo "already sourced current ws."
        fi
    fi
}

PROMPT_COMMAND="auto_source_ros2_ws; $PROMPT_COMMAND"
"

echo "$SCRIPT" >> ~/.bashrc
