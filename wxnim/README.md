# wxnim

Idiomatic Nim bindings for wxWidgets, inspired by [hxWidgets](https://github.com/haxewidgets/hxWidgets).

## Philosophy

`wxnim` aims to provide a complete, high-quality, and idiomatic Nim binding for wxWidgets. It follows a strict two-layer architecture:
- **Layer A (Public API)**: Clean Nim code using `ref object`, closures for events, and property-like procs.
- **Layer B (Internal Bindings)**: Direct `importcpp` bindings to wxWidgets C++ API.

## Features

`wxnim` covers almost the entire API surface of wxWidgets as modeled by `hxWidgets`.

### Core & Containers
* `App`, `Frame`, `Panel`, `ScrolledWindow`, `Notebook`, `TopLevelWindow`, `Window`

### Common Controls
* `Button`, `ToggleButton`, `CheckBox`, `RadioButton`, `StaticText`, `StaticBitmap`, `StaticBox`, `StaticLine`
* `Choice`, `ComboBox`, `ListBox`, `Gauge`, `Slider`, `ScrollBar`, `SpinCtrl`

### Advanced Widgets
* `ListCtrl`, `TreeCtrl`, `Grid`, `WebView`, `StyledTextCtrl`, `SearchCtrl`

### Menus & Dialogs
* `MenuBar`, `Menu`, `MenuItem`
* `Dialog`, `MessageDialog`, `FileDialog`, `DirDialog`

### GDI & Graphics
* `Colour`, `Font`, `Pen`, `Brush`, `Bitmap`, `Image`, `Icon`, `Cursor`, `Region`, `ImageList`
* `PaintDC`, `ClientDC`, `WindowDC`, `MemoryDC`

### Layout Management
* `BoxSizer`, `StaticBoxSizer`, `GridSizer`, `FlexGridSizer`, `Sizer`

### System, Events & Utilities
* `Timer`, `Config`, `StandardPaths`, `SystemSettings`, `Locale`, `Clipboard`
* Exhaustive event system: `MouseEvent`, `KeyEvent`, `SizeEvent`, `MoveEvent`, `PaintEvent`, etc.
* **Event Bridging**: Uses Nim closures for idiomatic event handling.

## Architecture

### Layer A: Public API (`src/wxnim/`)
* **Idiomatic Nim**: Uses `ref object`, property-like procs, and modules.
* **Closure Events**: Bind events directly to Nim procs or closures.
* **Type-Safe Styles**: Composable styles using `distinct` types.
* **Memory Safe**: Uses finalizers to manage C++ objects not owned by the window hierarchy.

### Layer B: Internal Bindings (`src/wxraw/`)
* **Direct FFI**: Uses Nim's `importcpp` to interface with C++ wxWidgets.
* **Consolidated Types**: All raw types are centralized to avoid redefinition errors.

## Example

```nim
import wxnim
import wxnim/styles/frame_styles

let app = newApp()
let frame = newFrame(nil, title = "Hello wxnim")
frame.show()
app.mainLoop()
```

## Installation

Add `wxnim` to your `.nimble` file:
```nim
requires "wxnim >= 0.1.0"
```

## License

MIT
