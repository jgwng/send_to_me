function addDelay(delay) {
  return new Promise((resolve) => setTimeout(resolve, delay));
}

function openFlutterApp(){
    window.addEventListener('load', function(ev) {
      // Download main.dart.js
      _flutter.loader.loadEntrypoint({
        serviceWorker: {
          serviceWorkerVersion: serviceWorkerVersion,
        },
        onEntrypointLoaded: async function(engineInitializer) {
          const appRunner = await engineInitializer.initializeEngine();
          await addDelay();
          await appRunner.runApp();
          document.querySelector("flutter-view").classList.add("fade-in");
          document.querySelector('meta[name="theme-color"]').setAttribute('content',  '#FFFFFF');
        }
      });
    });
}