# Local codemirror setup thing

-   Requires NPM v7 or higher

First thing, clone `https://github.com/JuliaPluto/codemirror-pluto-setup` so you have a `codemirror-pluto-setup` folder.

Only install packages using `npm install` inside the root directory. Don't do `npm install` inside `codemirror-pluto-setup`. You can add other packages to the pluto setup with `npm install X --workspace codemirror-pluto-setup`

Now you can do `./bundle.sh` and it will generate a bundle and d.ts, and move them to where Pluto is (on my computer at least, so you should edit bundle.sh a bit)

Then clone specific local versions of whatever package you want to play with locally into the `packages` folder. If you now do `npm install` in the root directory, it will use the version of the packages in `packages` to install `codemirror-pluto-setup`.

Say I want to work on autocomplete, I clone `https://github.com/codemirror/autocomplete` into `packages/autocomplete`. Then I do a `npm install` IN THE ROOT, and now `codemirror-pluto-setup/node_modules/autocomplete` will be our local `packages/autocomplete` version.

In `bundle.sh` you'll see a commented line, that is for autocomplete. You need to add this for any other packages you clone. (There might be an automated solution, but I'm lazyyyy)
