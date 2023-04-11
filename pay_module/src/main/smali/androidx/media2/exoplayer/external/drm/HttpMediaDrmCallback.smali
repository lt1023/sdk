.class public final Landroidx/media2/exoplayer/external/drm/HttpMediaDrmCallback;
.super Ljava/lang/Object;
.source "HttpMediaDrmCallback.java"

# interfaces
.implements Landroidx/media2/exoplayer/external/drm/MediaDrmCallback;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x12
.end annotation

.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field private static final MAX_MANUAL_REDIRECTS:I = 0x5


# instance fields
.field private final dataSourceFactory:Landroidx/media2/exoplayer/external/upstream/HttpDataSource$Factory;

.field private final defaultLicenseUrl:Ljava/lang/String;

.field private final forceDefaultLicenseUrl:Z

.field private final keyRequestProperties:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroidx/media2/exoplayer/external/upstream/HttpDataSource$Factory;)V
    .locals 1
    .param p1, "defaultLicenseUrl"    # Ljava/lang/String;
    .param p2, "dataSourceFactory"    # Landroidx/media2/exoplayer/external/upstream/HttpDataSource$Factory;

    .line 62
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Landroidx/media2/exoplayer/external/drm/HttpMediaDrmCallback;-><init>(Ljava/lang/String;ZLandroidx/media2/exoplayer/external/upstream/HttpDataSource$Factory;)V

    .line 63
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZLandroidx/media2/exoplayer/external/upstream/HttpDataSource$Factory;)V
    .locals 1
    .param p1, "defaultLicenseUrl"    # Ljava/lang/String;
    .param p2, "forceDefaultLicenseUrl"    # Z
    .param p3, "dataSourceFactory"    # Landroidx/media2/exoplayer/external/upstream/HttpDataSource$Factory;

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-object p3, p0, Landroidx/media2/exoplayer/external/drm/HttpMediaDrmCallback;->dataSourceFactory:Landroidx/media2/exoplayer/external/upstream/HttpDataSource$Factory;

    .line 76
    iput-object p1, p0, Landroidx/media2/exoplayer/external/drm/HttpMediaDrmCallback;->defaultLicenseUrl:Ljava/lang/String;

    .line 77
    iput-boolean p2, p0, Landroidx/media2/exoplayer/external/drm/HttpMediaDrmCallback;->forceDefaultLicenseUrl:Z

    .line 78
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/drm/HttpMediaDrmCallback;->keyRequestProperties:Ljava/util/Map;

    .line 79
    return-void
.end method

.method private static executePost(Landroidx/media2/exoplayer/external/upstream/HttpDataSource$Factory;Ljava/lang/String;[BLjava/util/Map;)[B
    .locals 15
    .param p0, "dataSourceFactory"    # Landroidx/media2/exoplayer/external/upstream/HttpDataSource$Factory;
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "data"    # [B
    .param p3    # Ljava/util/Map;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/exoplayer/external/upstream/HttpDataSource$Factory;",
            "Ljava/lang/String;",
            "[B",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)[B"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 151
    .local p3, "requestProperties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {p0}, Landroidx/media2/exoplayer/external/upstream/HttpDataSource$Factory;->createDataSource()Landroidx/media2/exoplayer/external/upstream/HttpDataSource;

    move-result-object v1

    .line 152
    .local v1, "dataSource":Landroidx/media2/exoplayer/external/upstream/HttpDataSource;
    if-eqz p3, :cond_1

    .line 153
    invoke-interface/range {p3 .. p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 154
    .local v2, "requestProperty":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v1, v3, v4}, Landroidx/media2/exoplayer/external/upstream/HttpDataSource;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    .end local v2    # "requestProperty":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_0

    .line 153
    :cond_0
    goto :goto_1

    .line 152
    :cond_1
    nop

    .line 158
    :goto_1
    const/4 v0, 0x0

    move-object/from16 v2, p1

    move v3, v0

    .line 160
    .end local p1    # "url":Ljava/lang/String;
    .local v2, "url":Ljava/lang/String;
    .local v3, "manualRedirectCount":I
    :goto_2
    new-instance v0, Landroidx/media2/exoplayer/external/upstream/DataSpec;

    .line 162
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x0

    const-wide/16 v11, -0x1

    const/4 v13, 0x0

    const/4 v14, 0x1

    move-object v4, v0

    move-object/from16 v6, p2

    invoke-direct/range {v4 .. v14}, Landroidx/media2/exoplayer/external/upstream/DataSpec;-><init>(Landroid/net/Uri;[BJJJLjava/lang/String;I)V

    .line 169
    .local v4, "dataSpec":Landroidx/media2/exoplayer/external/upstream/DataSpec;
    new-instance v0, Landroidx/media2/exoplayer/external/upstream/DataSourceInputStream;

    invoke-direct {v0, v1, v4}, Landroidx/media2/exoplayer/external/upstream/DataSourceInputStream;-><init>(Landroidx/media2/exoplayer/external/upstream/DataSource;Landroidx/media2/exoplayer/external/upstream/DataSpec;)V

    move-object v5, v0

    .line 171
    .local v5, "inputStream":Landroidx/media2/exoplayer/external/upstream/DataSourceInputStream;
    :try_start_0
    invoke-static {v5}, Landroidx/media2/exoplayer/external/util/Util;->toByteArray(Ljava/io/InputStream;)[B

    move-result-object v0
    :try_end_0
    .catch Landroidx/media2/exoplayer/external/upstream/HttpDataSource$InvalidResponseCodeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 184
    invoke-static {v5}, Landroidx/media2/exoplayer/external/util/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 171
    return-object v0

    .line 184
    :catchall_0
    move-exception v0

    goto :goto_7

    .line 172
    :catch_0
    move-exception v0

    move-object v6, v0

    move-object v0, v6

    .line 175
    .local v0, "e":Landroidx/media2/exoplayer/external/upstream/HttpDataSource$InvalidResponseCodeException;
    :try_start_1
    iget v6, v0, Landroidx/media2/exoplayer/external/upstream/HttpDataSource$InvalidResponseCodeException;->responseCode:I

    const/16 v7, 0x133

    if-eq v6, v7, :cond_3

    iget v6, v0, Landroidx/media2/exoplayer/external/upstream/HttpDataSource$InvalidResponseCodeException;->responseCode:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/16 v7, 0x134

    if-ne v6, v7, :cond_2

    goto :goto_3

    :cond_2
    goto :goto_4

    :cond_3
    :goto_3
    add-int/lit8 v6, v3, 0x1

    .end local v3    # "manualRedirectCount":I
    .local v6, "manualRedirectCount":I
    const/4 v7, 0x5

    if-ge v3, v7, :cond_4

    const/4 v3, 0x1

    goto :goto_5

    :cond_4
    move v3, v6

    .end local v6    # "manualRedirectCount":I
    .restart local v3    # "manualRedirectCount":I
    :goto_4
    const/4 v6, 0x0

    move v6, v3

    const/4 v3, 0x0

    .line 178
    .local v3, "manuallyRedirect":Z
    .restart local v6    # "manualRedirectCount":I
    :goto_5
    if-eqz v3, :cond_5

    :try_start_2
    invoke-static {v0}, Landroidx/media2/exoplayer/external/drm/HttpMediaDrmCallback;->getRedirectUrl(Landroidx/media2/exoplayer/external/upstream/HttpDataSource$InvalidResponseCodeException;)Ljava/lang/String;

    move-result-object v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_6

    .line 184
    .end local v0    # "e":Landroidx/media2/exoplayer/external/upstream/HttpDataSource$InvalidResponseCodeException;
    .end local v3    # "manuallyRedirect":Z
    :catchall_1
    move-exception v0

    move v3, v6

    goto :goto_7

    .line 178
    .restart local v0    # "e":Landroidx/media2/exoplayer/external/upstream/HttpDataSource$InvalidResponseCodeException;
    .restart local v3    # "manuallyRedirect":Z
    :cond_5
    const/4 v7, 0x0

    .line 179
    .local v7, "redirectUrl":Ljava/lang/String;
    :goto_6
    if-eqz v7, :cond_6

    .line 182
    move-object v2, v7

    .line 184
    .end local v0    # "e":Landroidx/media2/exoplayer/external/upstream/HttpDataSource$InvalidResponseCodeException;
    .end local v3    # "manuallyRedirect":Z
    .end local v7    # "redirectUrl":Ljava/lang/String;
    invoke-static {v5}, Landroidx/media2/exoplayer/external/util/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 185
    nop

    .line 186
    .end local v4    # "dataSpec":Landroidx/media2/exoplayer/external/upstream/DataSpec;
    .end local v5    # "inputStream":Landroidx/media2/exoplayer/external/upstream/DataSourceInputStream;
    move v3, v6

    goto :goto_2

    .line 180
    .restart local v0    # "e":Landroidx/media2/exoplayer/external/upstream/HttpDataSource$InvalidResponseCodeException;
    .restart local v3    # "manuallyRedirect":Z
    .restart local v4    # "dataSpec":Landroidx/media2/exoplayer/external/upstream/DataSpec;
    .restart local v5    # "inputStream":Landroidx/media2/exoplayer/external/upstream/DataSourceInputStream;
    .restart local v7    # "redirectUrl":Ljava/lang/String;
    :cond_6
    nop

    .end local v1    # "dataSource":Landroidx/media2/exoplayer/external/upstream/HttpDataSource;
    .end local v2    # "url":Ljava/lang/String;
    .end local v4    # "dataSpec":Landroidx/media2/exoplayer/external/upstream/DataSpec;
    .end local v5    # "inputStream":Landroidx/media2/exoplayer/external/upstream/DataSourceInputStream;
    .end local v6    # "manualRedirectCount":I
    .end local p0    # "dataSourceFactory":Landroidx/media2/exoplayer/external/upstream/HttpDataSource$Factory;
    .end local p2    # "data":[B
    .end local p3    # "requestProperties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 184
    .end local v0    # "e":Landroidx/media2/exoplayer/external/upstream/HttpDataSource$InvalidResponseCodeException;
    .end local v7    # "redirectUrl":Ljava/lang/String;
    .restart local v1    # "dataSource":Landroidx/media2/exoplayer/external/upstream/HttpDataSource;
    .restart local v2    # "url":Ljava/lang/String;
    .local v3, "manualRedirectCount":I
    .restart local v4    # "dataSpec":Landroidx/media2/exoplayer/external/upstream/DataSpec;
    .restart local v5    # "inputStream":Landroidx/media2/exoplayer/external/upstream/DataSourceInputStream;
    .restart local p0    # "dataSourceFactory":Landroidx/media2/exoplayer/external/upstream/HttpDataSource$Factory;
    .restart local p2    # "data":[B
    .restart local p3    # "requestProperties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_7
    invoke-static {v5}, Landroidx/media2/exoplayer/external/util/Util;->closeQuietly(Ljava/io/Closeable;)V

    throw v0

    return-void
.end method

.method private static getRedirectUrl(Landroidx/media2/exoplayer/external/upstream/HttpDataSource$InvalidResponseCodeException;)Ljava/lang/String;
    .locals 3
    .param p0, "exception"    # Landroidx/media2/exoplayer/external/upstream/HttpDataSource$InvalidResponseCodeException;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 190
    iget-object v0, p0, Landroidx/media2/exoplayer/external/upstream/HttpDataSource$InvalidResponseCodeException;->headerFields:Ljava/util/Map;

    .line 191
    .local v0, "headerFields":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    if-eqz v0, :cond_1

    .line 192
    const-string v1, "Location"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 193
    .local v1, "locationHeaders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 194
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    return-object v2

    .line 193
    :cond_0
    goto :goto_0

    .line 191
    .end local v1    # "locationHeaders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    nop

    .line 197
    :goto_0
    const/4 v1, 0x0

    return-object v1
.end method


# virtual methods
.method public clearAllKeyRequestProperties()V
    .locals 2

    .line 111
    iget-object v0, p0, Landroidx/media2/exoplayer/external/drm/HttpMediaDrmCallback;->keyRequestProperties:Ljava/util/Map;

    monitor-enter v0

    .line 112
    :try_start_0
    iget-object v1, p0, Landroidx/media2/exoplayer/external/drm/HttpMediaDrmCallback;->keyRequestProperties:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 113
    monitor-exit v0

    .line 114
    return-void

    .line 113
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public clearKeyRequestProperty(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .line 101
    invoke-static {p1}, Landroidx/media2/exoplayer/external/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    iget-object v0, p0, Landroidx/media2/exoplayer/external/drm/HttpMediaDrmCallback;->keyRequestProperties:Ljava/util/Map;

    monitor-enter v0

    .line 103
    :try_start_0
    iget-object v1, p0, Landroidx/media2/exoplayer/external/drm/HttpMediaDrmCallback;->keyRequestProperties:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    monitor-exit v0

    .line 105
    return-void

    .line 104
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public executeKeyRequest(Ljava/util/UUID;Landroidx/media2/exoplayer/external/drm/ExoMediaDrm$KeyRequest;)[B
    .locals 5
    .param p1, "uuid"    # Ljava/util/UUID;
    .param p2, "request"    # Landroidx/media2/exoplayer/external/drm/ExoMediaDrm$KeyRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 125
    invoke-virtual {p2}, Landroidx/media2/exoplayer/external/drm/ExoMediaDrm$KeyRequest;->getLicenseServerUrl()Ljava/lang/String;

    move-result-object v0

    .line 126
    .local v0, "url":Ljava/lang/String;
    iget-boolean v1, p0, Landroidx/media2/exoplayer/external/drm/HttpMediaDrmCallback;->forceDefaultLicenseUrl:Z

    if-nez v1, :cond_1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    goto :goto_1

    .line 127
    :cond_1
    :goto_0
    iget-object v0, p0, Landroidx/media2/exoplayer/external/drm/HttpMediaDrmCallback;->defaultLicenseUrl:Ljava/lang/String;

    .line 129
    :goto_1
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 131
    .local v1, "requestProperties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v2, Landroidx/media2/exoplayer/external/C;->PLAYREADY_UUID:Ljava/util/UUID;

    invoke-virtual {v2, p1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "text/xml"

    goto :goto_2

    .line 132
    :cond_2
    sget-object v2, Landroidx/media2/exoplayer/external/C;->CLEARKEY_UUID:Ljava/util/UUID;

    invoke-virtual {v2, p1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "application/json"

    goto :goto_2

    :cond_3
    const-string v2, "application/octet-stream"

    :goto_2
    nop

    .line 133
    .local v2, "contentType":Ljava/lang/String;
    const-string v3, "Content-Type"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    sget-object v3, Landroidx/media2/exoplayer/external/C;->PLAYREADY_UUID:Ljava/util/UUID;

    invoke-virtual {v3, p1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 135
    const-string v3, "SOAPAction"

    const-string v4, "http://schemas.microsoft.com/DRM/2007/03/protocols/AcquireLicense"

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 134
    :cond_4
    nop

    .line 139
    :goto_3
    iget-object v3, p0, Landroidx/media2/exoplayer/external/drm/HttpMediaDrmCallback;->keyRequestProperties:Ljava/util/Map;

    monitor-enter v3

    .line 140
    :try_start_0
    iget-object v4, p0, Landroidx/media2/exoplayer/external/drm/HttpMediaDrmCallback;->keyRequestProperties:Ljava/util/Map;

    invoke-interface {v1, v4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 141
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 142
    iget-object v3, p0, Landroidx/media2/exoplayer/external/drm/HttpMediaDrmCallback;->dataSourceFactory:Landroidx/media2/exoplayer/external/upstream/HttpDataSource$Factory;

    invoke-virtual {p2}, Landroidx/media2/exoplayer/external/drm/ExoMediaDrm$KeyRequest;->getData()[B

    move-result-object v4

    invoke-static {v3, v0, v4, v1}, Landroidx/media2/exoplayer/external/drm/HttpMediaDrmCallback;->executePost(Landroidx/media2/exoplayer/external/upstream/HttpDataSource$Factory;Ljava/lang/String;[BLjava/util/Map;)[B

    move-result-object v3

    return-object v3

    .line 141
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4
.end method

.method public executeProvisionRequest(Ljava/util/UUID;Landroidx/media2/exoplayer/external/drm/ExoMediaDrm$ProvisionRequest;)[B
    .locals 4
    .param p1, "uuid"    # Ljava/util/UUID;
    .param p2, "request"    # Landroidx/media2/exoplayer/external/drm/ExoMediaDrm$ProvisionRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 118
    nop

    .line 119
    invoke-virtual {p2}, Landroidx/media2/exoplayer/external/drm/ExoMediaDrm$ProvisionRequest;->getDefaultUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroidx/media2/exoplayer/external/drm/ExoMediaDrm$ProvisionRequest;->getData()[B

    move-result-object v1

    invoke-static {v1}, Landroidx/media2/exoplayer/external/util/Util;->fromUtf8Bytes([B)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0xf

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&signedRequest="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 120
    .local v0, "url":Ljava/lang/String;
    iget-object v1, p0, Landroidx/media2/exoplayer/external/drm/HttpMediaDrmCallback;->dataSourceFactory:Landroidx/media2/exoplayer/external/upstream/HttpDataSource$Factory;

    sget-object v2, Landroidx/media2/exoplayer/external/util/Util;->EMPTY_BYTE_ARRAY:[B

    const/4 v3, 0x0

    invoke-static {v1, v0, v2, v3}, Landroidx/media2/exoplayer/external/drm/HttpMediaDrmCallback;->executePost(Landroidx/media2/exoplayer/external/upstream/HttpDataSource$Factory;Ljava/lang/String;[BLjava/util/Map;)[B

    move-result-object v1

    return-object v1
.end method

.method public setKeyRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 88
    invoke-static {p1}, Landroidx/media2/exoplayer/external/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    invoke-static {p2}, Landroidx/media2/exoplayer/external/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    iget-object v0, p0, Landroidx/media2/exoplayer/external/drm/HttpMediaDrmCallback;->keyRequestProperties:Ljava/util/Map;

    monitor-enter v0

    .line 91
    :try_start_0
    iget-object v1, p0, Landroidx/media2/exoplayer/external/drm/HttpMediaDrmCallback;->keyRequestProperties:Ljava/util/Map;

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    monitor-exit v0

    .line 93
    return-void

    .line 92
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
