'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"flutter_bootstrap.js": "6b4810d37c4f5e1f47647c191dd48de5",
"version.json": "df320688feed956e77b449c186e0d813",
"index.html": "d58c88d2c452735a452685a292528b56",
"/": "d58c88d2c452735a452685a292528b56",
"main.dart.js": "77e589fcd7f6f2d0f19380e82d5e0aa2",
"flutter.js": "4b2350e14c6650ba82871f60906437ea",
"README.md": "272c7e88a19b1089fae25d99c282c4e6",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"manifest.json": "07dae862b3b823feed2de77a57d12a78",
".git/config": "f22ddec87941ba801531ddecfacfa617",
".git/objects/61/f16c6bdc537ece17dc1077b6c8f151e9cec294": "4998ac2cb389006ffb7e478fcb6eac72",
".git/objects/95/8d848f1ca52f5263ebe29b213157a400171929": "659fb4e4646ab4c50cf89d1cd4bcf9aa",
".git/objects/57/daff516523806f9c9fad26a4171baa24d3be99": "e3ffa27757517268237d9d337b3b7ce0",
".git/objects/6f/8d524984d96cd52df024458587a14b86bbaf57": "8d7f91f02045d712670929a419b28102",
".git/objects/0e/7f44d6e3cf3ba4ce5079d354cf64d44f50e578": "d43fee6ab898640c0e8fc40560b49ae5",
".git/objects/0e/05b4332b0d28a580d5822a856ebc80dbf048d1": "94126122dfebd2c20b0f2967bb63e006",
".git/objects/02/0f1d0cb56432d86ba1470029dd9006b2c87ab2": "a4caea508a75c999a2a7c9ff5ff2fb61",
".git/objects/d0/cb1d7825a4b03d2a4c63211ac704011caa323d": "f47f30fce5014ab378ceca27df6a3aa0",
".git/objects/d6/9c56691fbdb0b7efa65097c7cc1edac12a6d3e": "868ce37a3a78b0606713733248a2f579",
".git/objects/eb/9b4d76e525556d5d89141648c724331630325d": "37c0954235cbe27c4d93e74fe9a578ef",
".git/objects/f2/04823a42f2d890f945f70d88b8e2d921c6ae26": "6b47f314ffc35cf6a1ced3208ecc857d",
".git/objects/f2/4d571a42875aac674b571558e74d4e929de62a": "a6d9b8e48a17cb687b0820908f256f11",
".git/objects/ca/8482c88c44dcfdf9ead9d3726df9574ac9775c": "81cbf504c8b90bc81a07b514349a4ac5",
".git/objects/e4/4c02aad59aa755c83a9f2d01120f3f983731ac": "604cfb7990f6c87e56fa9b5cabd40052",
".git/objects/fe/428d03835eb6d7c7f62b12c843c6565c4fde4b": "bf407adddbe1468423828d5633674847",
".git/objects/c6/06caa16378473a4bb9e8807b6f43e69acf30ad": "ed187e1b169337b5fbbce611844136c6",
".git/objects/ec/361605e9e785c47c62dd46a67f9c352731226b": "d1eafaea77b21719d7c450bcf18236d6",
".git/objects/4e/165945f6879da4720c2d7831d8e22e6c82d920": "e54ee35d47d6746392f5916bb8f7abbf",
".git/objects/27/a297abdda86a3cbc2d04f0036af1e62ae008c7": "51d74211c02d96c368704b99da4022d5",
".git/objects/29/1ac3db0977c8843e2e68df2f9bb8bfbc93fa95": "80c17bda1e6c5665e17cc3413ab67a20",
".git/objects/7c/09d499f23e8c9cfadbd067e09e62b423cd8b4a": "4f5d6ea007527788d254cd3ceeb9b8a8",
".git/objects/73/7f149c855c9ccd61a5e24ce64783eaf921c709": "1d813736c393435d016c1bfc46a6a3a6",
".git/objects/8a/aa46ac1ae21512746f852a42ba87e4165dfdd1": "1d8820d345e38b30de033aa4b5a23e7b",
".git/objects/4c/450d9103c2ad3d9062144bf1996ce941aada3d": "52ee9fdbc2d84098a94a2150f1a55a3c",
".git/objects/26/e5b75c5f711f32a52d15c685eab32ea2b09b08": "d33e9e9936512b22a3b5a8aca16da681",
".git/objects/88/cfd48dff1169879ba46840804b412fe02fefd6": "e42aaae6a4cbfbc9f6326f1fa9e3380c",
".git/objects/91/173cd594ffc8767a5373bf74e231f9e8002bc0": "2d6c364becfcbaa244fdc8f79b4b936e",
".git/objects/3a/bf18c41c58c933308c244a875bf383856e103e": "30790d31a35e3622fd7b3849c9bf1894",
".git/objects/30/a73997b44180fa370e6f628e40f51a85445092": "4293c7be98bd73cc76827a474fbc1377",
".git/objects/30/5fe485fc189ddb2a23ace4fcad93aa73923ed3": "eb4fe9e6f70b8b159904d511dd6739a6",
".git/objects/08/33394f899eec1c0af8200e40bcbbc365ade388": "d2f05d489eefd6185a510918b84f5b48",
".git/objects/6d/5f0fdc7ccbdf7d01fc607eb818f81a0165627e": "2b2403c52cb620129b4bbc62f12abd57",
".git/objects/99/9b1ca6c2b083bcf4297204bd61a6c14e42291c": "49c6f409d1fccd9c0d2679ee151ca1df",
".git/objects/97/8a4d89de1d1e20408919ec3f54f9bba275d66f": "dbaa9c6711faa6123b43ef2573bc1457",
".git/objects/63/6931bcaa0ab4c3ff63c22d54be8c048340177b": "8cc9c6021cbd64a862e0e47758619fb7",
".git/objects/64/0a537053e935a9ee2e8905110ab59b3dbb4e4c": "5adbe9c619b36010357196cf40b3e80f",
".git/objects/d4/3532a2348cc9c26053ddb5802f0e5d4b8abc05": "3dad9b209346b1723bb2cc68e7e42a44",
".git/objects/b1/5ad935a6a00c2433c7fadad53602c1d0324365": "8f96f41fe1f2721c9e97d75caa004410",
".git/objects/b1/afd5429fbe3cc7a88b89f454006eb7b018849a": "e4c2e016668208ba57348269fcb46d7b",
".git/objects/dc/42bbf9c87ce2aaa93aab4cd471429ccd1c37ad": "6bb8e101fceadf005101174345fd2d84",
".git/objects/d2/9407416d7aa0d311e76ee3076ef0a2a3bfdddc": "171ea50d99af1fb7056ecb1a7b18604c",
".git/objects/af/31ef4d98c006d9ada76f407195ad20570cc8e1": "a9d4d1360c77d67b4bb052383a3bdfd9",
".git/objects/b7/49bfef07473333cf1dd31e9eed89862a5d52aa": "36b4020dca303986cad10924774fb5dc",
".git/objects/b9/2a0d854da9a8f73216c4a0ef07a0f0a44e4373": "f62d1eb7f51165e2a6d2ef1921f976f3",
".git/objects/b9/6817937d7a6bea6a083f67b12960e6eae5ff2a": "223e78f617485b9ecbee533514eb3f04",
".git/objects/c3/e81f822689e3b8c05262eec63e4769e0dea74c": "8c6432dca0ea3fdc0d215dcc05d00a66",
".git/objects/ea/467aef3fc5ec77e446e2d1b4fd2ebefb1e4cac": "daf3b9d91d9e7aa1f385393f88ba5207",
".git/objects/f0/9a3ef1aae4d39f99509e8a9a15fe01eee4b41f": "fe2ef9df0c5443bd7d44d00c3bf4657c",
".git/objects/ce/abca8dcf67561731a5bf77fe20706a5dd294b6": "dca2e1f94cf666b1a9c51e81f77d6c5b",
".git/objects/2d/fcdbe9f2df0332cee24295b9c0a4cdbf2478b7": "b40637ed7a305a7a7296f4f96b139cc1",
".git/objects/4f/346c3e43f95e778d7cef3cb6ceede9cd2bf1c8": "99981890f1649c8ef95c28d9e5a27d4e",
".git/objects/1c/236bf51c310cf179a9aa34ee8096e14bf78403": "ade25d696ba7f2440e0c6e7aa169bd81",
".git/objects/78/9745b75e6062d60ddb0be38579aa088cbdb5f4": "05a75e89e5e0c6845f7b0bd41ad45322",
".git/objects/8b/85099d65e2c3170085b2d744fd9f292f6a436b": "42bc392909ca27fdd3d22c201893c1f7",
".git/objects/13/215678e250223c26cb1f9b4fb2923c3450f59e": "e0aeb8685efe027057ce29c6818355ea",
".git/objects/7a/c471a1d6d884f3694b196028ffa9caf7952c92": "36602c2c38293710773d6aa4b44861cd",
".git/HEAD": "cf7dd3ce51958c5f13fece957cc417fb",
".git/info/exclude": "036208b4a1ab4a235d75c181e685e5a3",
".git/logs/HEAD": "7e285824ec1c9f70a8422b3f47789e84",
".git/logs/refs/heads/main": "c2155d1c373e185c81ccd5189ada130f",
".git/logs/refs/remotes/origin/gh-pages": "82538637ee76e2165f004557e7e378e4",
".git/logs/refs/remotes/origin/main": "828c2993a4570d8be59150bbed0519b0",
".git/description": "a0a7c3fff21f2aea3cfa1d0316dd816c",
".git/hooks/commit-msg.sample": "579a3c1e12a1e74a98169175fb913012",
".git/hooks/pre-rebase.sample": "56e45f2bcbc8226d2b4200f7c46371bf",
".git/hooks/pre-commit.sample": "305eadbbcd6f6d2567e033ad12aabbc4",
".git/hooks/applypatch-msg.sample": "ce562e08d8098926a3862fc6e7905199",
".git/hooks/fsmonitor-watchman.sample": "a0b2633a2c8e97501610bd3f73da66fc",
".git/hooks/pre-receive.sample": "2ad18ec82c20af7b5926ed9cea6aeedd",
".git/hooks/prepare-commit-msg.sample": "2b5c047bdb474555e1787db32b2d2fc5",
".git/hooks/post-update.sample": "2b7ea5cee3c49ff53d41e00785eb974c",
".git/hooks/pre-merge-commit.sample": "39cb268e2a85d436b9eb6f47614c3cbc",
".git/hooks/pre-applypatch.sample": "054f9ffb8bfe04a599751cc757226dda",
".git/hooks/pre-push.sample": "2c642152299a94e05ea26eae11993b13",
".git/hooks/update.sample": "647ae13c682f7827c22f5fc08a03674e",
".git/hooks/push-to-checkout.sample": "c7ab00c7784efeadad3ae9b228d4b4db",
".git/refs/heads/main": "aaab83e6ebb264113fd0b60af5ede09a",
".git/refs/remotes/origin/gh-pages": "62759bbb81fe6cb33667b3bb9f38e992",
".git/refs/remotes/origin/main": "aaab83e6ebb264113fd0b60af5ede09a",
".git/index": "7a41e0e54117f881d5dc45b23acaa502",
".git/COMMIT_EDITMSG": "a8297d555dd34879e8e48e1cf12acefa",
"assets/AssetManifest.json": "2f2d6e4a2984a0d0a56b7a1b99632768",
"assets/NOTICES": "0972d06549ab6510da2afa8920250a3f",
"assets/FontManifest.json": "7b2a36307916a9721811788013e65289",
"assets/AssetManifest.bin.json": "684dd1f82797e09dd62dc8e4077001b9",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"assets/AssetManifest.bin": "bade5da4126be09d707d72c49ee41c64",
"assets/fonts/MaterialIcons-Regular.otf": "0db35ae7a415370b89e807027510caf0",
"assets/assets/images/Aktheuelt1.png": "b13c26fef1c7e7d66ec6c9a1fbb5a4c7",
"assets/assets/images/Aktheuelt3.png": "d64754f1dbf4339bbed06c01a2158174",
"assets/assets/images/Aktheuelt2.png": "cdd021adc6ed57ded6340cdf3d921a6a",
"assets/assets/images/Steg9.png": "0633cc264644f5b610f464a5d53d49c3",
"assets/assets/images/Steg8.png": "8c711e207663ad9d45562935f8066b39",
"assets/assets/images/Steg10.png": "cdcaf093ada7f538c870b32b499e9c27",
"assets/assets/images/Steg5.png": "d831c477c5b998296f7cfbc96bc531ac",
"assets/assets/images/Steg4.png": "6229b29b86d0e2236e896cc8502fdd65",
"assets/assets/images/Steg6.png": "1b956d5d3721e4a54eb5eefd64d7bcb3",
"assets/assets/images/Steg7.png": "54cf0d0e949961df073c796b14003f1c",
"assets/assets/images/Steg3.png": "abfc5b35b00a8da01b42cf1cfb520b17",
"assets/assets/images/Steg2.png": "1e6f66ef506ca5adea7c445581ed0011",
"assets/assets/images/Steg1.png": "0088bbe54846a14afec75382850e09bf",
"canvaskit/skwasm.js": "ac0f73826b925320a1e9b0d3fd7da61c",
"canvaskit/skwasm.js.symbols": "96263e00e3c9bd9cd878ead867c04f3c",
"canvaskit/canvaskit.js.symbols": "efc2cd87d1ff6c586b7d4c7083063a40",
"canvaskit/skwasm.wasm": "828c26a0b1cc8eb1adacbdd0c5e8bcfa",
"canvaskit/chromium/canvaskit.js.symbols": "e115ddcfad5f5b98a90e389433606502",
"canvaskit/chromium/canvaskit.js": "b7ba6d908089f706772b2007c37e6da4",
"canvaskit/chromium/canvaskit.wasm": "ea5ab288728f7200f398f60089048b48",
"canvaskit/canvaskit.js": "26eef3024dbc64886b7f48e1b6fb05cf",
"canvaskit/canvaskit.wasm": "e7602c687313cfac5f495c5eac2fb324",
"canvaskit/skwasm.worker.js": "89990e8c92bcb123999aa81f7e203b1c"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"flutter_bootstrap.js",
"assets/AssetManifest.bin.json",
"assets/FontManifest.json"];

// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
    })
  );
});
// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        // Claim client to enable caching on first launch
        self.clients.claim();
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      // Claim client to enable caching on first launch
      self.clients.claim();
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});
// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache only if the resource was successfully fetched.
        return response || fetch(event.request).then((response) => {
          if (response && Boolean(response.ok)) {
            cache.put(event.request, response.clone());
          }
          return response;
        });
      })
    })
  );
});
self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});
// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}
// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
