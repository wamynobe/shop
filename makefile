# REF: https://github.com/SimpleBoilerplates/Flutter/blob/master/makefile

SAVE_IFS := $(shell echo $$IFS)

# Adding a help file: https://gist.github.com/prwhite/8168133#gistcomment-1313022
help: ## This help dialog.
	@IFS=$$'\n' ; \
	help_lines=(`fgrep -h "##" $(MAKEFILE_LIST) | fgrep -v fgrep | sed -e 's/\\$$//'`); \
	for help_line in $${help_lines[@]}; do \
		IFS=$$'#' ; \
		help_split=($$help_line) ; \
		help_command=`echo $${help_split[0]} | sed -e 's/^ *//' -e 's/ *$$//'` ; \
		help_info=`echo $${help_split[2]} | sed -e 's/^ *//' -e 's/ *$$//'` ; \
		printf "%-30s %s\n" $$help_command $$help_info ; \
	IFS=$(SAVE_IFS) ; \
	done
 

clean: ## Cleans the environment
	@echo "╠ Cleaning the project..."
	@rm -rf pubspec.lock
	@fvm exec flutter clean
	@fvm exec flutter pub get

watch: ## Watches the files for changes
	@echo "╠ Watching the project..."
	@fvm exec dart run build_runner watch --delete-conflicting-outputs

gen: ## Generates the assets
	@echo "╠ Generating the assets..."
	@fvm exec flutter pub get
	@fvm exec dart run build_runner build --delete-conflicting-outputs

upgrade: clean ## Upgrades dependencies
	@echo "╠ Upgrading dependencies..."
	@fvm exec flutter pub upgrade

commit: format lint run_unit
	@echo "╠ Committing..."
	git add .
	git commit

purge: ## Purges the Flutter
	@pod deintegrate
	@fvm exec flutter clean
	@fvm exec flutter pub get

locale:
	@echo "╠ Generating the localization files..."
	@fvm exec flutter gen-l10n

build_apk_release: ## Builds the APK release
	@echo "╠ Building the APK release..."
	@make clean
	@make gen
	@fgen --no-watch
	@fvm exec flutter build apk --release --target lib/main_development.dart