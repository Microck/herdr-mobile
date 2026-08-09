import ExpoModulesCore

public class T3ReviewDiffModule: Module {
  public func definition() -> ModuleDefinition {
    Name("T3ReviewDiffSurface")

    View(T3ReviewDiffView.self) {
      Prop("rowsJson") { (view: T3ReviewDiffView, value: String) in view.rowsJson = value }
      Prop("tokensJson") { (view: T3ReviewDiffView, value: String) in view.tokensJson = value }
      Prop("tokensPatchJson") { (view: T3ReviewDiffView, value: String) in view.tokensPatchJson = value }
      Prop("tokensResetKey") { (view: T3ReviewDiffView, value: String) in view.tokensResetKey = value }
      Prop("contentResetKey") { (view: T3ReviewDiffView, value: String) in view.contentResetKey = value }
      Prop("collapsedFileIdsJson") { (view: T3ReviewDiffView, value: String) in view.collapsedFileIdsJson = value }
      Prop("viewedFileIdsJson") { (view: T3ReviewDiffView, value: String) in view.viewedFileIdsJson = value }
      Prop("selectedRowIdsJson") { (view: T3ReviewDiffView, value: String) in view.selectedRowIdsJson = value }
      Prop("collapsedCommentIdsJson") { (view: T3ReviewDiffView, value: String) in view.collapsedCommentIdsJson = value }
      Prop("appearanceScheme") { (view: T3ReviewDiffView, value: String) in view.appearanceScheme = value }
      Prop("themeJson") { (view: T3ReviewDiffView, value: String) in view.themeJson = value }
      Prop("styleJson") { (view: T3ReviewDiffView, value: String) in view.styleJson = value }
      Prop("rowHeight") { (view: T3ReviewDiffView, value: Double) in view.rowHeight = value }
      Prop("contentWidth") { (view: T3ReviewDiffView, value: Double) in view.contentWidth = value }
      Prop("initialRowIndex") { (view: T3ReviewDiffView, value: Int) in view.initialRowIndex = value }
      Prop("refreshing") { (view: T3ReviewDiffView, value: Bool) in view.refreshing = value }

      Events(
        "onPullToRefresh",
        "onDebug",
        "onVisibleFileChange",
        "onToggleFile",
        "onToggleViewedFile",
        "onPressLine",
        "onToggleComment"
      )

      AsyncFunction("setRowsJson") { (view: T3ReviewDiffView, value: String) in
        view.rowsJson = value
      }
      AsyncFunction("setTokensJson") { (view: T3ReviewDiffView, value: String) in
        view.tokensJson = value
      }
      AsyncFunction("setTokensPatchJson") { (view: T3ReviewDiffView, value: String) in
        view.tokensPatchJson = value
      }
      AsyncFunction("scrollToFile") { (view: T3ReviewDiffView, fileId: String, animated: Bool) in
        view.scrollToFile(fileId: fileId, animated: animated)
      }
      AsyncFunction("scrollToTop") { (view: T3ReviewDiffView, animated: Bool) in
        view.scrollToTop(animated: animated)
      }
    }
  }
}
