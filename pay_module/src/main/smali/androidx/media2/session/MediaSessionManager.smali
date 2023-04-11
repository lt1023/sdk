.class public final Landroidx/media2/session/MediaSessionManager;
.super Ljava/lang/Object;
.source "MediaSessionManager.java"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x1c
.end annotation


# static fields
.field static final DEBUG:Z

.field static final TAG:Ljava/lang/String; = "MediaSessionManager"

.field private static sInstance:Landroidx/media2/session/MediaSessionManager;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "sLock"
    .end annotation
.end field

.field private static final sLock:Ljava/lang/Object;


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 54
    const-string v0, "MediaSessionManager"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Landroidx/media2/session/MediaSessionManager;->DEBUG:Z

    .line 56
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/media2/session/MediaSessionManager;->sLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-object p1, p0, Landroidx/media2/session/MediaSessionManager;->mContext:Landroid/content/Context;

    .line 82
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Landroidx/media2/session/MediaSessionManager;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 69
    if-eqz p0, :cond_1

    .line 72
    sget-object v0, Landroidx/media2/session/MediaSessionManager;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 73
    :try_start_0
    sget-object v1, Landroidx/media2/session/MediaSessionManager;->sInstance:Landroidx/media2/session/MediaSessionManager;

    if-nez v1, :cond_0

    .line 74
    new-instance v1, Landroidx/media2/session/MediaSessionManager;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/media2/session/MediaSessionManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Landroidx/media2/session/MediaSessionManager;->sInstance:Landroidx/media2/session/MediaSessionManager;

    goto :goto_0

    .line 73
    :cond_0
    nop

    .line 76
    :goto_0
    sget-object v1, Landroidx/media2/session/MediaSessionManager;->sInstance:Landroidx/media2/session/MediaSessionManager;

    monitor-exit v0

    return-object v1

    .line 77
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 70
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "context shouldn\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getSessionServiceTokens()Ljava/util/Set;
    .locals 14
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Landroidx/media2/session/SessionToken;",
            ">;"
        }
    .end annotation

    .line 92
    new-instance v0, Landroidx/collection/ArraySet;

    invoke-direct {v0}, Landroidx/collection/ArraySet;-><init>()V

    .line 93
    .local v0, "sessionServiceTokens":Landroidx/collection/ArraySet;, "Landroidx/collection/ArraySet<Landroidx/media2/session/SessionToken;>;"
    iget-object v1, p0, Landroidx/media2/session/MediaSessionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 94
    .local v1, "pm":Landroid/content/pm/PackageManager;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 96
    .local v2, "services":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v3, Landroid/content/Intent;

    const-string v4, "androidx.media2.session.MediaLibraryService"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v4, 0x80

    invoke-virtual {v1, v3, v4}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    .line 98
    .local v3, "libraryServices":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v3, :cond_0

    .line 99
    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 98
    :cond_0
    nop

    .line 101
    :goto_0
    new-instance v5, Landroid/content/Intent;

    const-string v6, "androidx.media2.session.MediaSessionService"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5, v4}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v5

    .line 103
    .local v5, "sessionServices":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v5, :cond_1

    .line 104
    invoke-interface {v2, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 103
    :cond_1
    nop

    .line 106
    :goto_1
    new-instance v6, Landroid/content/Intent;

    const-string v7, "android.media.browse.MediaBrowserService"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6, v4}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    .line 109
    .local v4, "browserServices":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v4, :cond_2

    .line 110
    invoke-interface {v2, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    .line 109
    :cond_2
    nop

    .line 113
    :goto_2
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    .line 114
    .local v7, "service":Landroid/content/pm/ResolveInfo;
    if-eqz v7, :cond_4

    iget-object v8, v7, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-nez v8, :cond_3

    .line 115
    goto :goto_3

    .line 117
    :cond_3
    iget-object v8, v7, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 118
    .local v8, "serviceInfo":Landroid/content/pm/ServiceInfo;
    new-instance v9, Landroidx/media2/session/SessionToken;

    iget-object v10, p0, Landroidx/media2/session/MediaSessionManager;->mContext:Landroid/content/Context;

    new-instance v11, Landroid/content/ComponentName;

    iget-object v12, v8, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v13, v8, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v11, v12, v13}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v9, v10, v11}, Landroidx/media2/session/SessionToken;-><init>(Landroid/content/Context;Landroid/content/ComponentName;)V

    .line 120
    .local v9, "token":Landroidx/media2/session/SessionToken;
    invoke-virtual {v0, v9}, Landroidx/collection/ArraySet;->add(Ljava/lang/Object;)Z

    .line 121
    .end local v7    # "service":Landroid/content/pm/ResolveInfo;
    .end local v8    # "serviceInfo":Landroid/content/pm/ServiceInfo;
    .end local v9    # "token":Landroidx/media2/session/SessionToken;
    goto :goto_3

    .line 114
    .restart local v7    # "service":Landroid/content/pm/ResolveInfo;
    :cond_4
    goto :goto_3

    .line 122
    .end local v7    # "service":Landroid/content/pm/ResolveInfo;
    :cond_5
    sget-boolean v6, Landroidx/media2/session/MediaSessionManager;->DEBUG:Z

    if-eqz v6, :cond_7

    .line 123
    const-string v6, "MediaSessionManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Found "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroidx/collection/ArraySet;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " session services"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    invoke-virtual {v0}, Landroidx/collection/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/media2/session/SessionToken;

    .line 125
    .local v7, "token":Landroidx/media2/session/SessionToken;
    const-string v8, "MediaSessionManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "   "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    .end local v7    # "token":Landroidx/media2/session/SessionToken;
    goto :goto_4

    .line 124
    :cond_6
    goto :goto_5

    .line 122
    :cond_7
    nop

    .line 128
    :goto_5
    return-object v0
.end method
