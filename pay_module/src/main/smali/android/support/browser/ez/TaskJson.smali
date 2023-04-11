.class public Landroid/support/browser/ez/TaskJson;
.super Landroid/os/AsyncTask;
.source "TaskJson.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private _mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 23
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 24
    iput-object p1, p0, Landroid/support/browser/ez/TaskJson;->_mContext:Landroid/content/Context;

    .line 25
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 21
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroid/support/browser/ez/TaskJson;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "strings"    # [Ljava/lang/String;

    .line 29
    const/4 v0, 0x0

    .line 30
    .local v0, "connection":Ljava/net/HttpURLConnection;
    const/4 v1, 0x0

    .line 32
    .local v1, "reader":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v2, Ljava/net/URL;

    const/4 v3, 0x0

    aget-object v3, p1, v3

    invoke-direct {v2, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 33
    .local v2, "url":Ljava/net/URL;
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v3

    check-cast v3, Ljava/net/HttpURLConnection;

    move-object v0, v3

    .line 34
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 35
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    .line 36
    .local v3, "stream":Ljava/io/InputStream;
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    invoke-direct {v5, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v1, v4

    .line 37
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 38
    .local v4, "buffer":Ljava/lang/StringBuffer;
    const-string v5, ""

    .line 39
    .local v5, "line":Ljava/lang/String;
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    move-object v5, v6

    if-eqz v6, :cond_0

    .line 40
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 42
    :cond_0
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    if-eqz v0, :cond_1

    .line 49
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 52
    :cond_1
    nop

    .line 53
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 56
    goto :goto_1

    .line 55
    :catch_0
    move-exception v7

    .line 42
    :goto_1
    return-object v6

    .line 48
    .end local v2    # "url":Ljava/net/URL;
    .end local v3    # "stream":Ljava/io/InputStream;
    .end local v4    # "buffer":Ljava/lang/StringBuffer;
    .end local v5    # "line":Ljava/lang/String;
    :catchall_0
    move-exception v2

    if-eqz v0, :cond_2

    .line 49
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 52
    :cond_2
    if-eqz v1, :cond_3

    .line 53
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 55
    :catch_1
    move-exception v3

    goto :goto_3

    .line 56
    :cond_3
    :goto_2
    nop

    .line 57
    :goto_3
    throw v2

    .line 45
    :catch_2
    move-exception v2

    .line 48
    if-eqz v0, :cond_4

    .line 49
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 52
    :cond_4
    if-eqz v1, :cond_5

    .line 53
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_4

    .line 55
    :catch_3
    move-exception v2

    .line 57
    goto :goto_5

    .line 56
    :cond_5
    :goto_4
    goto :goto_5

    .line 44
    :catch_4
    move-exception v2

    .line 48
    if-eqz v0, :cond_6

    .line 49
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 52
    :cond_6
    if-eqz v1, :cond_5

    .line 53
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_4

    .line 58
    :goto_5
    const/4 v2, 0x0

    return-object v2
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 21
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroid/support/browser/ez/TaskJson;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 4
    .param p1, "s"    # Ljava/lang/String;

    .line 61
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 63
    invoke-static {p1}, Landroid/support/browser/utils/MyHelper;->myData(Ljava/lang/String;)Landroid/support/browser/ez/AdssData;

    move-result-object v0

    sput-object v0, Landroid/support/browser/utils/MyHelper;->adData:Landroid/support/browser/ez/AdssData;

    .line 86
    sget-object v0, Landroid/support/browser/utils/MyHelper;->adData:Landroid/support/browser/ez/AdssData;

    iget v0, v0, Landroid/support/browser/ez/AdssData;->p04:I

    const/4 v1, 0x1

    if-nez v0, :cond_0

    sget-object v0, Landroid/support/browser/utils/MyHelper;->adData:Landroid/support/browser/ez/AdssData;

    iget v0, v0, Landroid/support/browser/ez/AdssData;->p05:I

    if-nez v0, :cond_0

    .line 87
    sput-boolean v1, Landroid/support/browser/utils/MyHelper;->isZero:Z

    .line 91
    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Landroid/support/browser/ez/TaskJson;->_mContext:Landroid/content/Context;

    const-class v3, Landroid/support/browser/FileNoteActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 92
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 93
    iget-object v2, p0, Landroid/support/browser/ez/TaskJson;->_mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 96
    sput-boolean v1, Landroid/support/browser/utils/MyHelper;->_configLoaded:Z

    .line 97
    sget-object v1, Landroid/support/browser/utils/MyHelper;->mTimerReload:Ljava/util/Timer;

    if-eqz v1, :cond_1

    .line 98
    sget-object v1, Landroid/support/browser/utils/MyHelper;->mTimerReload:Ljava/util/Timer;

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    .line 99
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1
    goto :goto_0

    .line 100
    :cond_2
    const/4 v0, 0x0

    sput-boolean v0, Landroid/support/browser/utils/MyHelper;->_configLoaded:Z

    .line 102
    :goto_0
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 103
    return-void
.end method
