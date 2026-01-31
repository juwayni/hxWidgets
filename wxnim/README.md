# wxnim

Idiomatic Nim bindings for wxWidgets, inspired by [hxWidgets](https://github.com/haxewidgets/hxWidgets).

## Philosophy

`wxnim` aims to provide a complete, high-quality, and idiomatic Nim binding for wxWidgets. It follows a strict two-layer architecture:
- **Layer A (Public API)**: Clean Nim code using `ref object`, closures for events, and property-like procs.
- **Layer B (Internal Bindings)**: Direct `importcpp` bindings to wxWidgets C++ API.

## Features

### Core & Containers
* `App`, `Frame`, `Panel`, `ScrolledWindow`, `Notebook`

### Common Controls
* `Button`, `StaticText`, `CheckBox`, `RadioButton`, `TextCtrl`, `ComboBox`, `ListBox`

### Advanced Widgets
* `ListCtrl` (Report, Icon, List modes)
* `TreeCtrl`

### Menus & Dialogs
* `MenuBar`, `Menu`, `MenuItem`
* `MessageDialog`, `FileDialog`

### GDI & Graphics
* `Colour`, `Font`, `Pen`, `Brush`, `Bitmap`, `Image`, `Icon`
* `PaintDC`, `ClientDC`

### Layout Management
* `BoxSizer`, `StaticBoxSizer`, `GridSizer`, `FlexGridSizer`

### Events
* Strongly typed event system with closure support.
* `MouseEvent`, `KeyEvent`, `SizeEvent`, `MoveEvent`, `PaintEvent`, etc.

## Installation

Add `wxnim` to your `.nimble` file:
```nim
requires "wxnim >= 0.1.0"
```

## Example

```nim
import wxnim
import wxnim/styles/frame_styles

let app = newApp()
let frame = newFrame(nil, title = "Hello wxnim")
frame.show()
app.mainLoop()
```

## License

MIT
