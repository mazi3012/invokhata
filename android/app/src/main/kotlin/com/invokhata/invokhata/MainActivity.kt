package com.invokhata.invokhata

import android.os.Bundle
import androidx.core.view.WindowCompat
import io.flutter.embedding.android.FlutterActivity

class MainActivity : FlutterActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        // Enable edge-to-edge: allow UI to extend into system bars.
        // Transparent system bars are handled via themes (styles.xml),
        // but we explicitly tell the window not to fit insets so Flutter
        // can draw behind the status and navigation bars for maximal vertical space.
        WindowCompat.setDecorFitsSystemWindows(window, false)
    }
}

