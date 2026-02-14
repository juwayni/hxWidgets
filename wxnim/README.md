# wxnim

Idiomatic Nim bindings for wxWidgets, inspired by [hxWidgets](https://github.com/haxewidgets/hxWidgets).

## Philosophy

`wxnim` provides a complete, functional, and idiomatic Nim binding for wxWidgets. It follows a strict two-layer architecture:
- **Layer A (Public API)**: Clean Nim code using `ref object`, closures for events, and property-like procs.
- **Layer B (Internal Bindings)**: Direct `importcpp` bindings to wxWidgets C++ API.

## Features

`wxnim` covers the extensive API surface of wxWidgets as modeled by `hxWidgets`.

### Core & Containers
* `App`, `Frame`, `Panel`, `ScrolledWindow`, `Notebook`, `TopLevelWindow`, `Window`, `CollapsiblePane`, `BookCtrlBase`

### Common Controls
* `Button`, `ToggleButton`, `CheckBox`, `RadioButton`, `StaticText`, `StaticBitmap`, `StaticBox`, `StaticLine`
* `Choice`, `ComboBox`, `ListBox`, `Gauge`, `Slider`, `ScrollBar`, `SpinCtrl`

### Advanced Widgets
* `ListCtrl`, `TreeCtrl`, `Grid`, `WebView`, `StyledTextCtrl`, `SearchCtrl`, `DataViewCtrl`, `DataViewListCtrl`, `PropertyGrid`, `GLCanvas`, `CalendarCtrl`, `HyperlinkCtrl`, `TaskBarIcon`

### Menus & Dialogs
* `MenuBar`, `Menu`, `MenuItem`
* `MessageDialog`, `FileDialog`, `DirDialog`, `TextEntryDialog`, `PasswordEntryDialog`

### GDI & Graphics
* `Colour`, `Font`, `Pen`, `Brush`, `Bitmap`, `Image`, `Icon`, `Cursor`, `Region`, `ImageList`, `BitmapBundle`, `GraphicsPath`, `GraphicsContext`
* `PaintDC`, `ClientDC`, `WindowDC`, `MemoryDC`, `GCDC`

### Layout Management
* `BoxSizer`, `StaticBoxSizer`, `GridSizer`, `FlexGridSizer`, `Sizer`

### System, Events & Utilities
* `Timer`, `Config`, `StandardPaths`, `SystemSettings`, `Locale`, `Clipboard`, `Process`, `PlatformInfo`, `ArrayString`, `Variant`
* **Functional Event System**: Strongly typed event system with closure support and C++ bridge.

## Examples

You can find several examples in the `examples/` directory:
1. `hello_world.nim`: Basic window creation.
2. `button_click.nim`: Handling button click events with closures.
3. `text_input.nim`: Using TextCtrl and retrieving values.
4. `layout_boxsizer.nim`: Complex layouts using nested BoxSizers.
5. `notebook.nim`: Implementing a tabbed interface.
6. `menu_bar.nim`: Creating menus and handling menu events.
7. `dialogs.nim`: Using various standard wxWidgets dialogs.
8. `drawing_canvas.nim`: Custom drawing on a panel using DC and GraphicsContext.
9. `list_and_tree.nim`: Demonstrating ListCtrl and TreeCtrl widgets.
10. `00-Showcase/`: A complete port of the hxWidgets Showcase application.

## Architecture

### Layer A: Public API (`src/wxnim/`)
* **Idiomatic Nim**: Uses `ref object`, property-like procs, and modules.
* **Closure Events**: Bind events directly to Nim procs or closures.
* **Type-Safe Styles**: Composable styles using `distinct` types.
* **Memory Safe**: Uses finalizers to manage C++ objects.

### Layer B: Internal Bindings (`src/wxraw/`)
* **Direct FFI**: Uses Nim's `importcpp` to interface with C++ wxWidgets.
* **Consolidated Types**: Consolidated raw types to ensure compilation consistency.

## Installation

Add `wxnim` to your `.nimble` file:
```nim
requires "wxnim >= 0.1.0"
```

## License

MIT
