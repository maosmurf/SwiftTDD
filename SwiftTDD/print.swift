import Foundation

typealias PrintWrapper = (_ msg: Any) -> ()

func printMessage(_ print: PrintWrapper, _ msg: String) {
    print(msg)
}

func printDemo(_ msg: String) -> Void {
    let foo: PrintWrapper = { items in
        print(items)
    }
    printMessage(foo, msg);
}

// printDemo("Hello, World!")
