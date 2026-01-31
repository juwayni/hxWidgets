# wxnim

Idiomatic Nim bindings for wxWidgets, inspired by [hxWidgets](https://github.com/haxewidgets/hxWidgets).

## Philosophy

`wxnim` is a high-quality, two-layered, idiomatic Nim binding for wxWidgets. It follows a strict separation between low-level FFI and high-level Nim code.

## Features (Phase 1 & 2)

* **Core**: App, Frame, Panel, Window
* **Common Controls**: Button, StaticText, CheckBox, TextCtrl (Multiline support)
* **Menus**: MenuBar, Menu, MenuItem
* **Dialogs**: MessageDialog, FileDialog
* **Layout**: BoxSizer, Sizer
* **Events**: Closure-based event binding
* **GDI**: PaintDC, ClientDC, basic drawing

## Architecture

### Layer A: Public API (`src/wxnim/`)
* **Idiomatic Nim**: Uses `ref object`, property-like procs, and modules.
* **Closure Events**: Bind events directly to Nim procs or closures.
* **Type-Safe Styles**: Composable styles using `distinct` types.

### Layer B: Internal Bindings (`src/wxraw/`)
* **Direct FFI**: Uses Nim's `importcpp` to interface with C++ wxWidgets.
* **Separated**: Keeps C++ complexity out of the user-facing API.

## Example

```nim
import wxnim
import wxnim/styles/frame_styles

let app = newApp()
let frame = newFrame(nil, title = "Hello wxnim")
frame.show()
app.mainLoop()
```

## Comparisons with hxWidgets

`wxnim` maps the architectural spirit of `hxWidgets` to Nim's unique features:
* `typedef` style modules in `hxWidgets` -> `distinct` types in `wxnim`.
* `cpp.Pointer` in Haxe -> `ptr` and `ref object` in Nim.
* `haxe.Callbacks` -> Nim closures.

## License

MIT
