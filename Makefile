hosting: ## Runs the web application in dev
	@echo "╠ Build and hosting the app"
	@flutter build web
	@firebase deploy --only hosting

format: ## Formats the code
	@echo "╠ Formatting the code"
	@dart format .

clean: ## Cleans the environment
	@echo "╠ Cleaning the project..."
	@rm -rf pubspec.lock
	@flutter clean

lint: ## Lints the code
	@echo "╠ Verifying code..."
	@dart analyze . || (echo "Error in project"; exit 1)

upgrade: clean ## Upgrades dependencies
	@echo "╠ Upgrading dependencies..."
	@flutter pub upgrade