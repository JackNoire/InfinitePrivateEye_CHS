.class public Lcom/nflystudio/net/BaseRequest;
.super Landroid/os/AsyncTask;
.source "BaseRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        "Lcom/nflystudio/net/BaseRespone;",
        ">;"
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private isCache:Z

.field num:I

.field private pd:Landroid/app/ProgressDialog;

.field private postdata:Ljava/lang/String;

.field requesttype:I

.field responeobserver:Lcom/nflystudio/net/ResponeObserver;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 31
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 32
    iput-object v1, p0, Lcom/nflystudio/net/BaseRequest;->responeobserver:Lcom/nflystudio/net/ResponeObserver;

    .line 35
    const/4 v0, 0x0

    iput v0, p0, Lcom/nflystudio/net/BaseRequest;->requesttype:I

    .line 36
    iput-object v1, p0, Lcom/nflystudio/net/BaseRequest;->postdata:Ljava/lang/String;

    .line 37
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nflystudio/net/BaseRequest;->isCache:Z

    .line 31
    return-void
.end method

.method private convertStreamToString(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    .line 54
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    invoke-direct {v5, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 55
    .local v2, "reader":Ljava/io/BufferedReader;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 56
    .local v4, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 58
    .local v1, "line":Ljava/lang/String;
    :goto_0
    :try_start_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    if-nez v1, :cond_0

    .line 65
    :try_start_1
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 70
    :goto_1
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 71
    .local v3, "result":Ljava/lang/String;
    return-object v3

    .line 59
    .end local v3    # "result":Ljava/lang/String;
    :cond_0
    :try_start_2
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 61
    :catch_0
    move-exception v0

    .line 62
    .local v0, "e":Ljava/io/IOException;
    :try_start_3
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 65
    :try_start_4
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 66
    :catch_1
    move-exception v0

    .line 67
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 63
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    .line 65
    :try_start_5
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 69
    :goto_2
    throw v5

    .line 66
    :catch_2
    move-exception v0

    .line 67
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 66
    .end local v0    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v0

    .line 67
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method public PostData(Ljava/lang/String;)V
    .locals 0
    .param p1, "aPostData"    # Ljava/lang/String;

    .prologue
    .line 156
    iput-object p1, p0, Lcom/nflystudio/net/BaseRequest;->postdata:Ljava/lang/String;

    .line 157
    return-void
.end method

.method public SetRequestType(I)V
    .locals 0
    .param p1, "aRequestType"    # I

    .prologue
    .line 40
    iput p1, p0, Lcom/nflystudio/net/BaseRequest;->requesttype:I

    .line 41
    return-void
.end method

.method public SetResponeObserver(Lcom/nflystudio/net/ResponeObserver;Landroid/content/Context;)V
    .locals 0
    .param p1, "aResponeObserver"    # Lcom/nflystudio/net/ResponeObserver;
    .param p2, "aContext"    # Landroid/content/Context;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/nflystudio/net/BaseRequest;->responeobserver:Lcom/nflystudio/net/ResponeObserver;

    .line 45
    iput-object p2, p0, Lcom/nflystudio/net/BaseRequest;->context:Landroid/content/Context;

    .line 46
    return-void
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Lcom/nflystudio/net/BaseRespone;
    .locals 15
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    .line 76
    new-instance v0, Lcom/nflystudio/net/BaseRespone;

    invoke-direct {v0}, Lcom/nflystudio/net/BaseRespone;-><init>()V

    .line 77
    .local v0, "baserespone":Lcom/nflystudio/net/BaseRespone;
    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 78
    .local v1, "client":Lorg/apache/http/client/HttpClient;
    const/4 v8, 0x0

    .line 79
    .local v8, "response":Lorg/apache/http/HttpResponse;
    const/4 v12, 0x0

    aget-object v11, p1, v12

    .line 82
    .local v11, "url":Ljava/lang/String;
    :try_start_0
    iget-object v12, p0, Lcom/nflystudio/net/BaseRequest;->postdata:Ljava/lang/String;

    if-nez v12, :cond_0

    .line 83
    new-instance v5, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v5, v11}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 84
    .local v5, "get":Lorg/apache/http/client/methods/HttpGet;
    invoke-virtual {v5}, Lorg/apache/http/client/methods/HttpGet;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v12

    const-string v13, "http.connection.timeout"

    const/16 v14, 0x4e20

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v12, v13, v14}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 85
    invoke-virtual {v5}, Lorg/apache/http/client/methods/HttpGet;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v12

    const-string v13, "http.socket.timeout"

    const/16 v14, 0x4e20

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v12, v13, v14}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 86
    invoke-interface {v1, v5}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v8

    .line 98
    .end local v5    # "get":Lorg/apache/http/client/methods/HttpGet;
    :goto_0
    invoke-interface {v8}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v4

    .line 99
    .local v4, "entity":Lorg/apache/http/HttpEntity;
    invoke-interface {v8}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v12

    invoke-interface {v12}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v10

    .line 100
    .local v10, "status":I
    const/16 v12, 0xc8

    if-ne v10, v12, :cond_1

    .line 102
    invoke-interface {v4}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4

    move-result-object v6

    .line 104
    .local v6, "is":Ljava/io/InputStream;
    :try_start_1
    invoke-direct {p0, v6, v11}, Lcom/nflystudio/net/BaseRequest;->convertStreamToString(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    iget v13, p0, Lcom/nflystudio/net/BaseRequest;->requesttype:I

    invoke-static {v12, v0, v13}, Lcom/nflystudio/net/DataParseUtil;->Parse(Ljava/lang/String;Lcom/nflystudio/net/BaseRespone;I)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    .line 138
    .end local v4    # "entity":Lorg/apache/http/HttpEntity;
    .end local v6    # "is":Ljava/io/InputStream;
    .end local v10    # "status":I
    :goto_1
    return-object v0

    .line 89
    :cond_0
    :try_start_2
    new-instance v7, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v7, v11}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 90
    .local v7, "post":Lorg/apache/http/client/methods/HttpPost;
    invoke-virtual {v7}, Lorg/apache/http/client/methods/HttpPost;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v12

    const-string v13, "http.connection.timeout"

    const/16 v14, 0x4e20

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v12, v13, v14}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 91
    invoke-virtual {v7}, Lorg/apache/http/client/methods/HttpPost;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v12

    const-string v13, "http.socket.timeout"

    const/16 v14, 0x4e20

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v12, v13, v14}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 92
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 93
    .local v9, "sparams":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v12, Lorg/apache/http/message/BasicNameValuePair;

    const-string v13, "update"

    iget-object v14, p0, Lcom/nflystudio/net/BaseRequest;->postdata:Ljava/lang/String;

    invoke-direct {v12, v13, v14}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v9, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    new-instance v12, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    const-string v13, "UTF-8"

    invoke-direct {v12, v9, v13}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {v7, v12}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 95
    invoke-interface {v1, v7}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v8

    goto :goto_0

    .line 106
    .end local v7    # "post":Lorg/apache/http/client/methods/HttpPost;
    .end local v9    # "sparams":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .restart local v4    # "entity":Lorg/apache/http/HttpEntity;
    .restart local v6    # "is":Ljava/io/InputStream;
    .restart local v10    # "status":I
    :catch_0
    move-exception v2

    .line 107
    .local v2, "e":Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    .line 109
    sget-object v12, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v13, "\u89e3\u6790\u5931\u8d25"

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 110
    const/4 v12, -0x2

    iput v12, v0, Lcom/nflystudio/net/BaseRespone;->status:I

    .line 111
    iget v12, p0, Lcom/nflystudio/net/BaseRequest;->requesttype:I

    iput v12, v0, Lcom/nflystudio/net/BaseRespone;->responetype:I
    :try_end_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    goto :goto_1

    .line 119
    .end local v2    # "e":Lorg/json/JSONException;
    .end local v4    # "entity":Lorg/apache/http/HttpEntity;
    .end local v6    # "is":Ljava/io/InputStream;
    .end local v10    # "status":I
    :catch_1
    move-exception v2

    .line 120
    .local v2, "e":Ljava/net/SocketTimeoutException;
    const/4 v12, -0x3

    iput v12, v0, Lcom/nflystudio/net/BaseRespone;->status:I

    .line 121
    iget v12, p0, Lcom/nflystudio/net/BaseRequest;->requesttype:I

    iput v12, v0, Lcom/nflystudio/net/BaseRespone;->responetype:I

    goto :goto_1

    .line 115
    .end local v2    # "e":Ljava/net/SocketTimeoutException;
    .restart local v4    # "entity":Lorg/apache/http/HttpEntity;
    .restart local v10    # "status":I
    :cond_1
    const/4 v12, -0x1

    :try_start_3
    iput v12, v0, Lcom/nflystudio/net/BaseRespone;->status:I

    .line 116
    iget v12, p0, Lcom/nflystudio/net/BaseRequest;->requesttype:I

    iput v12, v0, Lcom/nflystudio/net/BaseRespone;->responetype:I
    :try_end_3
    .catch Ljava/net/SocketTimeoutException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    goto :goto_1

    .line 123
    .end local v4    # "entity":Lorg/apache/http/HttpEntity;
    .end local v10    # "status":I
    :catch_2
    move-exception v2

    .line 124
    .local v2, "e":Lorg/apache/http/client/ClientProtocolException;
    const/4 v12, -0x1

    iput v12, v0, Lcom/nflystudio/net/BaseRespone;->status:I

    .line 125
    iget v12, p0, Lcom/nflystudio/net/BaseRequest;->requesttype:I

    iput v12, v0, Lcom/nflystudio/net/BaseRespone;->responetype:I

    .line 126
    invoke-virtual {v2}, Lorg/apache/http/client/ClientProtocolException;->printStackTrace()V

    goto :goto_1

    .line 127
    .end local v2    # "e":Lorg/apache/http/client/ClientProtocolException;
    :catch_3
    move-exception v3

    .line 129
    .local v3, "e1":Ljava/lang/IllegalStateException;
    const/4 v12, -0x1

    iput v12, v0, Lcom/nflystudio/net/BaseRespone;->status:I

    .line 130
    iget v12, p0, Lcom/nflystudio/net/BaseRequest;->requesttype:I

    iput v12, v0, Lcom/nflystudio/net/BaseRespone;->responetype:I

    .line 131
    invoke-virtual {v3}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_1

    .line 132
    .end local v3    # "e1":Ljava/lang/IllegalStateException;
    :catch_4
    move-exception v3

    .line 134
    .local v3, "e1":Ljava/io/IOException;
    const/4 v12, -0x1

    iput v12, v0, Lcom/nflystudio/net/BaseRespone;->status:I

    .line 135
    iget v12, p0, Lcom/nflystudio/net/BaseRequest;->requesttype:I

    iput v12, v0, Lcom/nflystudio/net/BaseRespone;->responetype:I

    .line 136
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_1
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/nflystudio/net/BaseRequest;->doInBackground([Ljava/lang/String;)Lcom/nflystudio/net/BaseRespone;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled()V
    .locals 0

    .prologue
    .line 143
    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    .line 144
    return-void
.end method

.method protected onPostExecute(Lcom/nflystudio/net/BaseRespone;)V
    .locals 2
    .param p1, "result"    # Lcom/nflystudio/net/BaseRespone;

    .prologue
    .line 150
    iget-object v0, p0, Lcom/nflystudio/net/BaseRequest;->responeobserver:Lcom/nflystudio/net/ResponeObserver;

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/nflystudio/net/BaseRequest;->responeobserver:Lcom/nflystudio/net/ResponeObserver;

    iget v1, p0, Lcom/nflystudio/net/BaseRequest;->requesttype:I

    invoke-interface {v0, p1, v1}, Lcom/nflystudio/net/ResponeObserver;->ResponeData(Lcom/nflystudio/net/BaseRespone;I)V

    .line 153
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lcom/nflystudio/net/BaseRespone;

    invoke-virtual {p0, p1}, Lcom/nflystudio/net/BaseRequest;->onPostExecute(Lcom/nflystudio/net/BaseRespone;)V

    return-void
.end method

.method public setCache(Z)V
    .locals 0
    .param p1, "isCache"    # Z

    .prologue
    .line 49
    iput-boolean p1, p0, Lcom/nflystudio/net/BaseRequest;->isCache:Z

    .line 50
    return-void
.end method
