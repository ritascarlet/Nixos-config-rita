#!/usr/bin/env bash

TASK_FILE="$HOME/.config/home-manager/waybar/modules/task.txt"
function update_task() {
    echo "$1" > "$TASK_FILE"
}

# Если передан аргумент, обновите задачу
if [ "$#" -gt 0 ]; then
    update_task "$1"
fi

# Чтение текущей задачи из файла
if [ -f "$TASK_FILE" ]; then
    CURRENT_TASK=$(cat "$TASK_FILE")
else
    CURRENT_TASK="Нет текущих задач"
fi

echo "$CURRENT_TASK"
