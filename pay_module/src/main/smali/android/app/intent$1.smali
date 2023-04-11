.class Landroid/app/intent$1;
.super Landroid/os/AsyncTask;
.source "intent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/intent;->GetInfo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/intent;


# direct methods
.method constructor <init>(Landroid/app/intent;)V
    .locals 0
    .param p1, "this$0"    # Landroid/app/intent;

    .line 54
    iput-object p1, p0, Landroid/app/intent$1;->this$0:Landroid/app/intent;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 54
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Landroid/app/intent$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .locals 9
    .param p1, "params"    # [Ljava/lang/Void;

    .line 60
    :try_start_0
    iget-object v0, p0, Landroid/app/intent$1;->this$0:Landroid/app/intent;

    invoke-static {v0}, Landroid/app/intent;->access$000(Landroid/app/intent;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    .line 62
    .local v0, "tmp2":[B
    new-instance v1, Ljava/net/URL;

    new-instance v2, Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-direct {v2, v0, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 63
    .local v1, "url":Ljava/net/URL;
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    check-cast v2, Ljava/net/HttpURLConnection;

    .line 64
    .local v2, "httpURLConnection":Ljava/net/HttpURLConnection;
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    .line 65
    .local v3, "inputStream":Ljava/io/InputStream;
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    invoke-direct {v5, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 66
    .local v4, "bufferedReader":Ljava/io/BufferedReader;
    const-string v5, ""

    .line 67
    .local v5, "line":Ljava/lang/String;
    :cond_0
    :goto_0
    if-eqz v5, :cond_1

    .line 68
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    move-object v5, v6

    .line 69
    if-eqz v5, :cond_0

    .line 70
    iget-object v6, p0, Landroid/app/intent$1;->this$0:Landroid/app/intent;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Landroid/app/intent$1;->this$0:Landroid/app/intent;

    invoke-static {v8}, Landroid/app/intent;->access$100(Landroid/app/intent;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/app/intent;->access$102(Landroid/app/intent;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 67
    .end local v0    # "tmp2":[B
    .end local v1    # "url":Ljava/net/URL;
    .end local v2    # "httpURLConnection":Ljava/net/HttpURLConnection;
    .end local v3    # "inputStream":Ljava/io/InputStream;
    .end local v4    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v5    # "line":Ljava/lang/String;
    :cond_1
    goto :goto_1

    .line 77
    :catch_0
    move-exception v0

    .line 78
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 75
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 76
    .local v0, "e":Ljava/net/MalformedURLException;
    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V

    .line 79
    .end local v0    # "e":Ljava/net/MalformedURLException;
    :goto_1
    nop

    .line 81
    :goto_2
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 54
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroid/app/intent$1;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 6
    .param p1, "advertisingId"    # Ljava/lang/String;

    .line 86
    const/4 v0, 0x0

    .line 89
    .local v0, "Status":Z
    :try_start_0
    new-instance v1, Lorg/json/JSONArray;

    iget-object v2, p0, Landroid/app/intent$1;->this$0:Landroid/app/intent;

    invoke-static {v2}, Landroid/app/intent;->access$100(Landroid/app/intent;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 91
    .local v1, "JA":Lorg/json/JSONArray;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONObject;

    .line 92
    .local v2, "JO":Lorg/json/JSONObject;
    iget-object v3, p0, Landroid/app/intent$1;->this$0:Landroid/app/intent;

    const-string v4, "id"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/app/intent;->access$202(Landroid/app/intent;Ljava/lang/String;)Ljava/lang/String;

    .line 93
    iget-object v3, p0, Landroid/app/intent$1;->this$0:Landroid/app/intent;

    const-string v4, "init"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v3, v4}, Landroid/app/intent;->access$302(Landroid/app/intent;I)I

    .line 94
    iget-object v3, p0, Landroid/app/intent$1;->this$0:Landroid/app/intent;

    const-string v4, "pe1"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v3, v4}, Landroid/app/intent;->access$402(Landroid/app/intent;I)I

    .line 95
    iget-object v3, p0, Landroid/app/intent$1;->this$0:Landroid/app/intent;

    const-string v4, "pe2"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v3, v4}, Landroid/app/intent;->access$502(Landroid/app/intent;I)I

    .line 96
    const-string v3, "status"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    move v0, v3

    .line 98
    nop

    const/4 v3, 0x1

    .local v3, "i":I
    :goto_0
    nop

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v4

    nop

    if-ge v3, v4, :cond_1

    .line 99
    nop

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    nop

    check-cast v4, Lorg/json/JSONObject;

    nop

    move-object v2, v4

    .line 100
    nop

    const-string v4, "pack"

    nop

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    nop

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    nop

    iget-object v5, p0, Landroid/app/intent$1;->this$0:Landroid/app/intent;

    nop

    invoke-static {v5}, Landroid/app/intent;->access$600(Landroid/app/intent;)Ljava/lang/String;

    move-result-object v5

    nop

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    nop

    if-eqz v4, :cond_0

    .line 101
    nop

    iget-object v4, p0, Landroid/app/intent$1;->this$0:Landroid/app/intent;

    nop

    const-string v5, "id"

    nop

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    nop

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    nop

    invoke-static {v4, v5}, Landroid/app/intent;->access$202(Landroid/app/intent;Ljava/lang/String;)Ljava/lang/String;

    .line 102
    nop

    iget-object v4, p0, Landroid/app/intent$1;->this$0:Landroid/app/intent;

    nop

    const-string v5, "init"

    nop

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    nop

    check-cast v5, Ljava/lang/Integer;

    nop

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    nop

    invoke-static {v4, v5}, Landroid/app/intent;->access$302(Landroid/app/intent;I)I

    .line 103
    nop

    iget-object v4, p0, Landroid/app/intent$1;->this$0:Landroid/app/intent;

    nop

    const-string v5, "pe1"

    nop

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    nop

    check-cast v5, Ljava/lang/Integer;

    nop

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    nop

    invoke-static {v4, v5}, Landroid/app/intent;->access$402(Landroid/app/intent;I)I

    .line 104
    nop

    iget-object v4, p0, Landroid/app/intent$1;->this$0:Landroid/app/intent;

    nop

    const-string v5, "pe2"

    nop

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    nop

    check-cast v5, Ljava/lang/Integer;

    nop

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    nop

    invoke-static {v4, v5}, Landroid/app/intent;->access$502(Landroid/app/intent;I)I

    .line 105
    nop

    const-string v4, "status"

    nop

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    nop

    check-cast v4, Ljava/lang/Boolean;

    nop

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    move v0, v4

    .line 106
    nop

    goto :goto_1

    .line 98
    :cond_0
    nop

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_1
    nop

    .line 111
    .end local v1    # "JA":Lorg/json/JSONArray;
    .end local v2    # "JO":Lorg/json/JSONObject;
    .end local v3    # "i":I
    :goto_1
    nop

    goto :goto_2

    .line 109
    :catch_0
    move-exception v1

    nop

    .line 110
    .local v1, "e":Lorg/json/JSONException;
    nop

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 113
    .end local v1    # "e":Lorg/json/JSONException;
    :goto_2
    nop

    if-eqz v0, :cond_2

    .line 114
    nop

    iget-object v1, p0, Landroid/app/intent$1;->this$0:Landroid/app/intent;

    invoke-virtual {v1}, Landroid/app/intent;->prepareAd()V

    goto :goto_3

    .line 113
    :cond_2
    nop

    .line 117
    :goto_3
    nop

    return-void
.end method
