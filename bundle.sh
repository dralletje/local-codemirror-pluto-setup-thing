# npm run prepare --workspace autocomplete

npm run bundle --workspace codemirror-pluto-setup
cp codemirror-pluto-setup/dist/index.es.js ../Pluto.jl/frontend/imports/codemirror-pluto-setup-bundle.min.js
cp codemirror-pluto-setup/dist/index.d.ts ../Pluto.jl/frontend/imports/CodemirrorPlutoSetup.d.ts