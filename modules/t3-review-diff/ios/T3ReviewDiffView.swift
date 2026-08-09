import ExpoModulesCore
import UIKit

public final class T3ReviewDiffView: ExpoView {
  var rowsJson = ""
  var tokensJson = ""
  var tokensPatchJson = ""
  var tokensResetKey = ""
  var contentResetKey = ""
  var collapsedFileIdsJson = ""
  var viewedFileIdsJson = ""
  var selectedRowIdsJson = ""
  var collapsedCommentIdsJson = ""
  var appearanceScheme = "light"
  var themeJson = ""
  var styleJson = ""
  var rowHeight = 0.0
  var contentWidth = 0.0
  var initialRowIndex = 0
  var refreshing = false

  private let messageLabel = UILabel()

  public required init(appContext: AppContext? = nil) {
    super.init(appContext: appContext)

    backgroundColor = .clear
    clipsToBounds = true

    messageLabel.text = ""
    messageLabel.numberOfLines = 0
    messageLabel.font = UIFont.monospacedSystemFont(ofSize: 13, weight: .regular)
    messageLabel.textColor = .secondaryLabel
    messageLabel.translatesAutoresizingMaskIntoConstraints = false
    messageLabel.isHidden = true
    addSubview(messageLabel)

    NSLayoutConstraint.activate([
      messageLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 12),
      messageLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -12),
      messageLabel.topAnchor.constraint(equalTo: topAnchor, constant: 12),
    ])
  }

  func scrollToFile(fileId: String, animated: Bool) {
    // The full renderer can add scrolling without changing the JS command API.
  }

  func scrollToTop(animated: Bool) {
    // The full renderer can add scrolling without changing the JS command API.
  }
}
