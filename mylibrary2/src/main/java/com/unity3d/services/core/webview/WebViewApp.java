package com.unity3d.services.core.webview;

import android.os.Build;
import android.os.ConditionVariable;
import android.os.Looper;
import android.webkit.RenderProcessGoneDetail;
import android.webkit.WebChromeClient;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.unity3d.services.core.configuration.Configuration;

import com.unity3d.services.core.webview.bridge.IWebViewBridgeInvoker;
import com.unity3d.services.core.webview.bridge.Invocation;
import com.unity3d.services.core.webview.bridge.NativeCallback;

import java.lang.reflect.Method;
import java.util.HashMap;
import java.util.concurrent.atomic.AtomicReference;
import org.json.JSONArray;
import org.json.JSONException;

/* loaded from: classes2.dex */
public class WebViewApp implements IWebViewBridgeInvoker {
    public static final int INVOKE_JS_CHARS_LENGTH = 22;
    public static ConditionVariable _conditionVariable;
    public static WebViewApp _currentApp;
    public Configuration _configuration;
    public HashMap<String, NativeCallback> _nativeCallbacks;
    public boolean _webAppLoaded;
    public WebView _webView;
    public static AtomicReference<Boolean> _initialized = new AtomicReference<>(Boolean.FALSE);
    public static AtomicReference<String> _webAppFailureMessage = new AtomicReference<>();
    public static AtomicReference<Integer> _webAppFailureCode = new AtomicReference<>();

    /* loaded from: classes2.dex */
    public class WebAppChromeClient extends WebChromeClient {
        public WebAppChromeClient() {
        }

        @Override // android.webkit.WebChromeClient
        public void onConsoleMessage(String str, int i2, String str2) {
        }
    }

    /* loaded from: classes2.dex */
    public class WebAppClient extends WebViewClient {
        public WebAppClient() {
        }

        @Override // android.webkit.WebViewClient
        public void onPageFinished(WebView webView, String str) {
        }

        @Override // android.webkit.WebViewClient
        public void onReceivedError(WebView webView, WebResourceRequest webResourceRequest, WebResourceError webResourceError) {
        }

        @Override // android.webkit.WebViewClient
        public boolean onRenderProcessGone(WebView webView, final RenderProcessGoneDetail renderProcessGoneDetail) {
            return true;
        }

        @Override // android.webkit.WebViewClient
        public boolean shouldOverrideUrlLoading(WebView webView, String str) {
            return false;
        }
    }

    public static boolean create(final Configuration configuration) throws IllegalThreadStateException {
        return false;
    }

    public static WebViewApp getCurrentApp() {
        return _currentApp;
    }

    private void invokeJavascriptMethod(String str, String str2, JSONArray jSONArray) throws JSONException {
    }

    public static void setCurrentApp(WebViewApp webViewApp) {
        _currentApp = webViewApp;
    }

    public void addCallback(NativeCallback nativeCallback) {
    }

    public NativeCallback getCallback(String str) {
        NativeCallback nativeCallback;
        synchronized (this._nativeCallbacks) {
            nativeCallback = this._nativeCallbacks.get(str);
        }
        return nativeCallback;
    }

    public Configuration getConfiguration() {
        return this._configuration;
    }

    public int getWebAppFailureCode() {
        return _webAppFailureCode.get().intValue();
    }

    public String getWebAppFailureMessage() {
        return _webAppFailureMessage.get();
    }

    public WebView getWebView() {
        return this._webView;
    }

    public boolean invokeCallback(Invocation invocation) {
        return true;
    }

    @Override // com.unity3d.services.core.webview.bridge.IWebViewBridgeInvoker
    public boolean invokeMethod(String str, String str2, Method method, Object... objArr) {
        return false;
    }

    public boolean isWebAppInitialized() {
        return _initialized.get().booleanValue();
    }

    public boolean isWebAppLoaded() {
        return this._webAppLoaded;
    }

    public void removeCallback(NativeCallback nativeCallback) {
    }

    public void resetWebViewAppInitialization() {
    }

    public boolean sendEvent(Enum r4, Enum r5, Object... objArr) {
        return false;
    }

    public void setConfiguration(Configuration configuration) {
    }

    public void setWebAppFailureCode(int i2) {
    }

    public void setWebAppFailureMessage(String str) {
    }

    public void setWebAppInitialized(boolean z) {
    }

    public void setWebAppLoaded(boolean z) {
    }

    public void setWebView(WebView webView) {
    }

    public WebViewApp(Configuration configuration) {
    }

    public WebViewApp() {
    }
}