# survicate-repro

Repro for survicate bug we are dealing with.

The bug is stemming from us using the UITableView.appearance() to set up our tableviews in a standard way across the app. One thing we set is the tableViewHeader property, which is the one that the Survicate SDK doesn't function propertly with.

If you toggle this line in AppDelegate you can see it works when commented out, but doesn't work when uncommented.

```
UITableView.appearance().tableHeaderView = .init(frame: .init(x: 0, y: 0, width: 0, height: CGFloat.leastNonzeroMagnitude))
```

You also need to set the workspace key, since that is not set on this public repo
