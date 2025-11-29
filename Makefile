.PHONY: runner upgrade

runner:
	@echo "Running build-runner..."
	@fvm dart run build_runner build -d

upgrade:
	@echo "Upgrading project..."
	@fvm dart pub get
	@fvm dart pub upgrade
	@fvm dart pub upgrade --major-versions
