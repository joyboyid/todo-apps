# how to run 

1. go run ./ -add "add some task" | add task
2. go run ./ -list | view task 
3. go run ./ -edit id | edit task
4. go run ./ -togle id | for check list to complete task
5. go run ./ -del id | for delete task

#### You can also use the following commands via the Makefile for convenience:
1. Add Task
```bash
make add task="add some task"
```
2. View Task
```bash
make list
```
3. Edit Task
```bash
make edit id="id" task="edit some task"
```
4. For check list to complete task
```bash
make toggle id="id"
```
5. For delete task
```bash
make del id="id"
```

#code for fun pal!