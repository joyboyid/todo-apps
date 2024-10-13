.PHONY: help # List of available commands
help:                                                                                                                    
	@echo "Available Commands:"
	@echo ""
	@printf "%-10s %s\n" "Command" "Description"
	@printf "%-10s %s\n" "-------" "-----------"
	@echo "help      List of available commands"
	@echo "add       Add new task (usage: make add task=\"<task description>\")"
	@echo "list      Show list of all tasks (usage: make list)"
	@echo "edit      Edit a task (usage: make edit id=\"<task id>\" task=\"<task description>\")"
	@echo "toggle    Toggle to complete a task (usage: make toggle id=\"<task id>\")"
	@echo "del       Delete a task (usage: make del id=\"<task id>\")"

.PHONY: add
add:
	@go run ./ -add "$(task)"

.PHONY: list
list:
	@go run ./ -list 

.PHONY: edit
edit:
	@go run ./ -edit "$(id)":"$(task)"

.PHONY: toggle
toggle:
	@go run ./ -toggle "$(id)"

.PHONY: del
del:
	@go run ./ -del "$(id)"
