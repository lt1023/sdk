.class public Landroidx/media2/session/MediaUtils;
.super Ljava/lang/Object;
.source "MediaUtils.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation build Landroidx/annotation/VisibleForTesting;
    otherwise = 0x3
.end annotation


# static fields
.field public static final CURRENT_VERSION:I = 0x0

.field public static final DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

.field private static final METADATA_COMPAT_KEY_TO_METADATA_KEY:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final METADATA_KEY_TO_METADATA_COMPAT_KEY:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final TAG:Ljava/lang/String; = "MediaUtils"

.field public static final TRANSACTION_SIZE_LIMIT_IN_BYTES:I = 0x40000

.field public static final VERSION_0:I

.field public static final sDefaultBrowserRoot:Landroidx/media/MediaBrowserServiceCompat$BrowserRoot;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 90
    new-instance v0, Landroidx/media/MediaBrowserServiceCompat$BrowserRoot;

    const-string v1, "androidx.media2.session.MediaLibraryService"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/media/MediaBrowserServiceCompat$BrowserRoot;-><init>(Ljava/lang/String;Landroid/os/Bundle;)V

    sput-object v0, Landroidx/media2/session/MediaUtils;->sDefaultBrowserRoot:Landroidx/media/MediaBrowserServiceCompat$BrowserRoot;

    .line 93
    new-instance v0, Landroidx/media2/session/MediaUtils$1;

    invoke-direct {v0}, Landroidx/media2/session/MediaUtils$1;-><init>()V

    sput-object v0, Landroidx/media2/session/MediaUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 106
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroidx/media2/session/MediaUtils;->METADATA_COMPAT_KEY_TO_METADATA_KEY:Ljava/util/Map;

    .line 107
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroidx/media2/session/MediaUtils;->METADATA_KEY_TO_METADATA_COMPAT_KEY:Ljava/util/Map;

    .line 109
    sget-object v0, Landroidx/media2/session/MediaUtils;->METADATA_COMPAT_KEY_TO_METADATA_KEY:Ljava/util/Map;

    const-string v1, "android.media.metadata.ADVERTISEMENT"

    const-string v2, "androidx.media2.metadata.ADVERTISEMENT"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    sget-object v0, Landroidx/media2/session/MediaUtils;->METADATA_COMPAT_KEY_TO_METADATA_KEY:Ljava/util/Map;

    const-string v1, "android.media.metadata.BT_FOLDER_TYPE"

    const-string v2, "androidx.media2.metadata.BROWSABLE"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    sget-object v0, Landroidx/media2/session/MediaUtils;->METADATA_COMPAT_KEY_TO_METADATA_KEY:Ljava/util/Map;

    const-string v1, "android.media.metadata.DOWNLOAD_STATUS"

    const-string v2, "androidx.media2.metadata.DOWNLOAD_STATUS"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    sget-object v0, Landroidx/media2/session/MediaUtils;->METADATA_COMPAT_KEY_TO_METADATA_KEY:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 119
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v2, Landroidx/media2/session/MediaUtils;->METADATA_KEY_TO_METADATA_COMPAT_KEY:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 122
    sget-object v2, Landroidx/media2/session/MediaUtils;->METADATA_KEY_TO_METADATA_COMPAT_KEY:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_0

    .line 120
    .restart local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "Shouldn\'t map to the same value"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 124
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    return-void
.end method

.method public static convertCommandButtonListToParcelImplList(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media2/session/MediaSession$CommandButton;",
            ">;)",
            "Ljava/util/List<",
            "Landroidx/versionedparcelable/ParcelImpl;",
            ">;"
        }
    .end annotation

    .line 590
    .local p0, "commandButtonList":Ljava/util/List;, "Ljava/util/List<Landroidx/media2/session/MediaSession$CommandButton;>;"
    if-nez p0, :cond_0

    .line 591
    const/4 v0, 0x0

    return-object v0

    .line 593
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 594
    .local v0, "parcelImplList":Ljava/util/List;, "Ljava/util/List<Landroidx/versionedparcelable/ParcelImpl;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 595
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media2/session/MediaSession$CommandButton;

    .line 596
    .local v2, "commandButton":Landroidx/media2/session/MediaSession$CommandButton;
    invoke-static {v2}, Landroidx/media2/common/MediaParcelUtils;->toParcelable(Landroidx/versionedparcelable/VersionedParcelable;)Landroidx/versionedparcelable/ParcelImpl;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 594
    .end local v2    # "commandButton":Landroidx/media2/session/MediaSession$CommandButton;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 598
    .end local v1    # "i":I
    :cond_1
    return-object v0
.end method

.method public static convertMediaItemListToMediaItemList(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/support/v4/media/MediaBrowserCompat$MediaItem;",
            ">;)",
            "Ljava/util/List<",
            "Landroidx/media2/common/MediaItem;",
            ">;"
        }
    .end annotation

    .line 298
    .local p0, "items":Ljava/util/List;, "Ljava/util/List<Landroid/support/v4/media/MediaBrowserCompat$MediaItem;>;"
    if-nez p0, :cond_0

    .line 299
    const/4 v0, 0x0

    return-object v0

    .line 301
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 302
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Landroidx/media2/common/MediaItem;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 303
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;

    invoke-static {v2}, Landroidx/media2/session/MediaUtils;->convertToMediaItem(Landroid/support/v4/media/MediaBrowserCompat$MediaItem;)Landroidx/media2/common/MediaItem;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 302
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 305
    .end local v1    # "i":I
    :cond_1
    return-object v0
.end method

.method public static convertMediaItemListToParcelImplListSlice(Ljava/util/List;)Landroidx/media2/common/ParcelImplListSlice;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media2/common/MediaItem;",
            ">;)",
            "Landroidx/media2/common/ParcelImplListSlice;"
        }
    .end annotation

    .line 606
    .local p0, "mediaItemList":Ljava/util/List;, "Ljava/util/List<Landroidx/media2/common/MediaItem;>;"
    if-nez p0, :cond_0

    .line 607
    const/4 v0, 0x0

    return-object v0

    .line 609
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 610
    .local v0, "itemParcelableList":Ljava/util/List;, "Ljava/util/List<Landroidx/versionedparcelable/ParcelImpl;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 611
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media2/common/MediaItem;

    .line 612
    .local v2, "item":Landroidx/media2/common/MediaItem;
    if-eqz v2, :cond_1

    .line 613
    invoke-static {v2}, Landroidx/media2/common/MediaParcelUtils;->toParcelable(Landroidx/versionedparcelable/VersionedParcelable;)Landroidx/versionedparcelable/ParcelImpl;

    move-result-object v3

    .line 614
    .local v3, "itemParcelImpl":Landroidx/versionedparcelable/ParcelImpl;
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 612
    .end local v3    # "itemParcelImpl":Landroidx/versionedparcelable/ParcelImpl;
    :cond_1
    nop

    .line 610
    .end local v2    # "item":Landroidx/media2/common/MediaItem;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 617
    .end local v1    # "i":I
    :cond_2
    new-instance v1, Landroidx/media2/common/ParcelImplListSlice;

    invoke-direct {v1, v0}, Landroidx/media2/common/ParcelImplListSlice;-><init>(Ljava/util/List;)V

    return-object v1
.end method

.method public static convertParcelImplListSliceToMediaItemList(Landroidx/media2/common/ParcelImplListSlice;)Ljava/util/List;
    .locals 5
    .param p0, "listSlice"    # Landroidx/media2/common/ParcelImplListSlice;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/common/ParcelImplListSlice;",
            ")",
            "Ljava/util/List<",
            "Landroidx/media2/common/MediaItem;",
            ">;"
        }
    .end annotation

    .line 359
    if-nez p0, :cond_0

    .line 360
    const/4 v0, 0x0

    return-object v0

    .line 362
    :cond_0
    invoke-virtual {p0}, Landroidx/media2/common/ParcelImplListSlice;->getList()Ljava/util/List;

    move-result-object v0

    .line 363
    .local v0, "parcelImplList":Ljava/util/List;, "Ljava/util/List<Landroidx/versionedparcelable/ParcelImpl;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 364
    .local v1, "mediaItemList":Ljava/util/List;, "Ljava/util/List<Landroidx/media2/common/MediaItem;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 365
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/versionedparcelable/ParcelImpl;

    .line 366
    .local v3, "itemParcelImpl":Landroidx/versionedparcelable/ParcelImpl;
    if-eqz v3, :cond_1

    .line 367
    invoke-static {v3}, Landroidx/media2/common/MediaParcelUtils;->fromParcelable(Landroidx/versionedparcelable/ParcelImpl;)Landroidx/versionedparcelable/VersionedParcelable;

    move-result-object v4

    check-cast v4, Landroidx/media2/common/MediaItem;

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 366
    :cond_1
    nop

    .line 364
    .end local v3    # "itemParcelImpl":Landroidx/versionedparcelable/ParcelImpl;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 370
    .end local v2    # "i":I
    :cond_2
    return-object v1
.end method

.method public static convertQueueItemListToMediaItemList(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;",
            ">;)",
            "Ljava/util/List<",
            "Landroidx/media2/common/MediaItem;",
            ">;"
        }
    .end annotation

    .line 312
    .local p0, "items":Ljava/util/List;, "Ljava/util/List<Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;>;"
    if-nez p0, :cond_0

    .line 313
    const/4 v0, 0x0

    return-object v0

    .line 315
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 316
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Landroidx/media2/common/MediaItem;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 317
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;

    invoke-static {v2}, Landroidx/media2/session/MediaUtils;->convertToMediaItem(Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;)Landroidx/media2/common/MediaItem;

    move-result-object v2

    .line 318
    .local v2, "item":Landroidx/media2/common/MediaItem;
    if-eqz v2, :cond_1

    .line 319
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 318
    :cond_1
    nop

    .line 316
    .end local v2    # "item":Landroidx/media2/common/MediaItem;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 322
    .end local v1    # "i":I
    :cond_2
    return-object v0
.end method

.method public static convertToCustomLayout(Landroid/support/v4/media/session/PlaybackStateCompat;)Ljava/util/List;
    .locals 7
    .param p0, "state"    # Landroid/support/v4/media/session/PlaybackStateCompat;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/media/session/PlaybackStateCompat;",
            ")",
            "Ljava/util/List<",
            "Landroidx/media2/session/MediaSession$CommandButton;",
            ">;"
        }
    .end annotation

    .line 854
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 855
    .local v0, "layout":Ljava/util/List;, "Ljava/util/List<Landroidx/media2/session/MediaSession$CommandButton;>;"
    if-nez p0, :cond_0

    .line 856
    return-object v0

    .line 858
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/media/session/PlaybackStateCompat;->getCustomActions()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;

    .line 859
    .local v2, "action":Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;
    new-instance v3, Landroidx/media2/session/MediaSession$CommandButton$Builder;

    invoke-direct {v3}, Landroidx/media2/session/MediaSession$CommandButton$Builder;-><init>()V

    new-instance v4, Landroidx/media2/session/SessionCommand;

    .line 860
    invoke-virtual {v2}, Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroidx/media2/session/SessionCommand;-><init>(Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {v3, v4}, Landroidx/media2/session/MediaSession$CommandButton$Builder;->setCommand(Landroidx/media2/session/SessionCommand;)Landroidx/media2/session/MediaSession$CommandButton$Builder;

    move-result-object v3

    .line 861
    invoke-virtual {v2}, Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;->getName()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/media2/session/MediaSession$CommandButton$Builder;->setDisplayName(Ljava/lang/CharSequence;)Landroidx/media2/session/MediaSession$CommandButton$Builder;

    move-result-object v3

    const/4 v4, 0x1

    .line 862
    invoke-virtual {v3, v4}, Landroidx/media2/session/MediaSession$CommandButton$Builder;->setEnabled(Z)Landroidx/media2/session/MediaSession$CommandButton$Builder;

    move-result-object v3

    .line 863
    invoke-virtual {v2}, Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;->getIcon()I

    move-result v4

    invoke-virtual {v3, v4}, Landroidx/media2/session/MediaSession$CommandButton$Builder;->setIconResId(I)Landroidx/media2/session/MediaSession$CommandButton$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/media2/session/MediaSession$CommandButton$Builder;->build()Landroidx/media2/session/MediaSession$CommandButton;

    move-result-object v3

    .line 864
    .local v3, "button":Landroidx/media2/session/MediaSession$CommandButton;
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 865
    .end local v2    # "action":Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;
    .end local v3    # "button":Landroidx/media2/session/MediaSession$CommandButton;
    goto :goto_0

    .line 866
    :cond_1
    return-object v0
.end method

.method public static convertToLibraryParams(Landroid/content/Context;Landroid/os/Bundle;)Landroidx/media2/session/MediaLibraryService$LibraryParams;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "legacyBundle"    # Landroid/os/Bundle;

    .line 756
    if-nez p1, :cond_0

    .line 757
    const/4 v0, 0x0

    return-object v0

    .line 760
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 761
    new-instance v0, Landroidx/media2/session/MediaLibraryService$LibraryParams$Builder;

    invoke-direct {v0}, Landroidx/media2/session/MediaLibraryService$LibraryParams$Builder;-><init>()V

    invoke-virtual {v0, p1}, Landroidx/media2/session/MediaLibraryService$LibraryParams$Builder;->setExtras(Landroid/os/Bundle;)Landroidx/media2/session/MediaLibraryService$LibraryParams$Builder;

    move-result-object v0

    const-string v1, "android.service.media.extra.RECENT"

    .line 762
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/media2/session/MediaLibraryService$LibraryParams$Builder;->setRecent(Z)Landroidx/media2/session/MediaLibraryService$LibraryParams$Builder;

    move-result-object v0

    const-string v1, "android.service.media.extra.OFFLINE"

    .line 763
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/media2/session/MediaLibraryService$LibraryParams$Builder;->setOffline(Z)Landroidx/media2/session/MediaLibraryService$LibraryParams$Builder;

    move-result-object v0

    const-string v1, "android.service.media.extra.SUGGESTED"

    .line 764
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/media2/session/MediaLibraryService$LibraryParams$Builder;->setSuggested(Z)Landroidx/media2/session/MediaLibraryService$LibraryParams$Builder;

    move-result-object v0

    .line 765
    invoke-virtual {v0}, Landroidx/media2/session/MediaLibraryService$LibraryParams$Builder;->build()Landroidx/media2/session/MediaLibraryService$LibraryParams;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 761
    return-object v0

    .line 766
    :catch_0
    move-exception v0

    .line 768
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Landroidx/media2/session/MediaLibraryService$LibraryParams$Builder;

    invoke-direct {v1}, Landroidx/media2/session/MediaLibraryService$LibraryParams$Builder;-><init>()V

    invoke-virtual {v1, p1}, Landroidx/media2/session/MediaLibraryService$LibraryParams$Builder;->setExtras(Landroid/os/Bundle;)Landroidx/media2/session/MediaLibraryService$LibraryParams$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/media2/session/MediaLibraryService$LibraryParams$Builder;->build()Landroidx/media2/session/MediaLibraryService$LibraryParams;

    move-result-object v1

    return-object v1
.end method

.method public static convertToMediaItem(Landroidx/media2/common/MediaItem;)Landroid/support/v4/media/MediaBrowserCompat$MediaItem;
    .locals 15
    .param p0, "item2"    # Landroidx/media2/common/MediaItem;

    .line 154
    if-nez p0, :cond_0

    .line 155
    const/4 v0, 0x0

    return-object v0

    .line 157
    :cond_0
    const/4 v0, 0x0

    .line 159
    .local v0, "flags":I
    invoke-virtual {p0}, Landroidx/media2/common/MediaItem;->getMetadata()Landroidx/media2/common/MediaMetadata;

    move-result-object v1

    .line 160
    .local v1, "metadata":Landroidx/media2/common/MediaMetadata;
    if-nez v1, :cond_1

    .line 161
    new-instance v2, Landroid/support/v4/media/MediaDescriptionCompat$Builder;

    invoke-direct {v2}, Landroid/support/v4/media/MediaDescriptionCompat$Builder;-><init>()V

    .line 162
    invoke-virtual {p0}, Landroidx/media2/common/MediaItem;->getMediaId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v4/media/MediaDescriptionCompat$Builder;->setMediaId(Ljava/lang/String;)Landroid/support/v4/media/MediaDescriptionCompat$Builder;

    move-result-object v2

    .line 163
    invoke-virtual {v2}, Landroid/support/v4/media/MediaDescriptionCompat$Builder;->build()Landroid/support/v4/media/MediaDescriptionCompat;

    move-result-object v2

    goto/16 :goto_7

    .line 165
    :cond_1
    new-instance v2, Landroid/support/v4/media/MediaDescriptionCompat$Builder;

    invoke-direct {v2}, Landroid/support/v4/media/MediaDescriptionCompat$Builder;-><init>()V

    .line 166
    invoke-virtual {p0}, Landroidx/media2/common/MediaItem;->getMediaId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v4/media/MediaDescriptionCompat$Builder;->setMediaId(Ljava/lang/String;)Landroid/support/v4/media/MediaDescriptionCompat$Builder;

    move-result-object v2

    const-string v3, "android.media.metadata.DISPLAY_SUBTITLE"

    .line 167
    invoke-virtual {v1, v3}, Landroidx/media2/common/MediaMetadata;->getText(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v4/media/MediaDescriptionCompat$Builder;->setSubtitle(Ljava/lang/CharSequence;)Landroid/support/v4/media/MediaDescriptionCompat$Builder;

    move-result-object v2

    const-string v3, "android.media.metadata.DISPLAY_DESCRIPTION"

    .line 168
    invoke-virtual {v1, v3}, Landroidx/media2/common/MediaMetadata;->getText(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v4/media/MediaDescriptionCompat$Builder;->setDescription(Ljava/lang/CharSequence;)Landroid/support/v4/media/MediaDescriptionCompat$Builder;

    move-result-object v2

    const-string v3, "android.media.metadata.DISPLAY_ICON"

    .line 169
    invoke-virtual {v1, v3}, Landroidx/media2/common/MediaMetadata;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v4/media/MediaDescriptionCompat$Builder;->setIconBitmap(Landroid/graphics/Bitmap;)Landroid/support/v4/media/MediaDescriptionCompat$Builder;

    move-result-object v2

    .line 170
    invoke-virtual {v1}, Landroidx/media2/common/MediaMetadata;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v4/media/MediaDescriptionCompat$Builder;->setExtras(Landroid/os/Bundle;)Landroid/support/v4/media/MediaDescriptionCompat$Builder;

    move-result-object v2

    .line 172
    .local v2, "builder":Landroid/support/v4/media/MediaDescriptionCompat$Builder;
    const-string v3, "android.media.metadata.TITLE"

    invoke-virtual {v1, v3}, Landroidx/media2/common/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 173
    .local v3, "title":Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 174
    invoke-virtual {v2, v3}, Landroid/support/v4/media/MediaDescriptionCompat$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v4/media/MediaDescriptionCompat$Builder;

    goto :goto_0

    .line 176
    :cond_2
    const-string v4, "android.media.metadata.DISPLAY_TITLE"

    invoke-virtual {v1, v4}, Landroidx/media2/common/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/support/v4/media/MediaDescriptionCompat$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v4/media/MediaDescriptionCompat$Builder;

    .line 179
    :goto_0
    const-string v4, "android.media.metadata.DISPLAY_ICON_URI"

    invoke-virtual {v1, v4}, Landroidx/media2/common/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 180
    .local v4, "displayIconUri":Ljava/lang/String;
    if-eqz v4, :cond_3

    .line 181
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/support/v4/media/MediaDescriptionCompat$Builder;->setIconUri(Landroid/net/Uri;)Landroid/support/v4/media/MediaDescriptionCompat$Builder;

    goto :goto_1

    .line 180
    :cond_3
    nop

    .line 184
    :goto_1
    const-string v5, "android.media.metadata.MEDIA_URI"

    invoke-virtual {v1, v5}, Landroidx/media2/common/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 185
    .local v5, "mediaUri":Ljava/lang/String;
    if-eqz v5, :cond_4

    .line 186
    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/support/v4/media/MediaDescriptionCompat$Builder;->setMediaUri(Landroid/net/Uri;)Landroid/support/v4/media/MediaDescriptionCompat$Builder;

    goto :goto_2

    .line 185
    :cond_4
    nop

    .line 189
    :goto_2
    invoke-virtual {v2}, Landroid/support/v4/media/MediaDescriptionCompat$Builder;->build()Landroid/support/v4/media/MediaDescriptionCompat;

    move-result-object v6

    .line 191
    .local v6, "descCompat":Landroid/support/v4/media/MediaDescriptionCompat;
    const-string v7, "androidx.media2.metadata.BROWSABLE"

    invoke-virtual {v1, v7}, Landroidx/media2/common/MediaMetadata;->containsKey(Ljava/lang/String;)Z

    move-result v7

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eqz v7, :cond_6

    const-string v7, "androidx.media2.metadata.BROWSABLE"

    .line 192
    invoke-virtual {v1, v7}, Landroidx/media2/common/MediaMetadata;->getLong(Ljava/lang/String;)J

    move-result-wide v10

    const-wide/16 v12, -0x1

    cmp-long v7, v10, v12

    if-eqz v7, :cond_5

    const/4 v7, 0x1

    goto :goto_4

    :cond_5
    goto :goto_3

    .line 191
    :cond_6
    nop

    .line 192
    :goto_3
    const/4 v7, 0x0

    .line 193
    .local v7, "browsable":Z
    :goto_4
    const-string v10, "androidx.media2.metadata.PLAYABLE"

    invoke-virtual {v1, v10}, Landroidx/media2/common/MediaMetadata;->getLong(Ljava/lang/String;)J

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmp-long v14, v10, v12

    if-eqz v14, :cond_7

    const/4 v10, 0x1

    goto :goto_5

    :cond_7
    const/4 v10, 0x0

    .line 194
    .local v10, "playable":Z
    :goto_5
    if-eqz v7, :cond_8

    goto :goto_6

    :cond_8
    const/4 v8, 0x0

    :goto_6
    if-eqz v10, :cond_9

    const/4 v9, 0x2

    nop

    :cond_9
    or-int v0, v8, v9

    move-object v2, v6

    .line 197
    .end local v3    # "title":Ljava/lang/String;
    .end local v4    # "displayIconUri":Ljava/lang/String;
    .end local v5    # "mediaUri":Ljava/lang/String;
    .end local v6    # "descCompat":Landroid/support/v4/media/MediaDescriptionCompat;
    .end local v7    # "browsable":Z
    .end local v10    # "playable":Z
    .local v2, "descCompat":Landroid/support/v4/media/MediaDescriptionCompat;
    :goto_7
    new-instance v3, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;

    invoke-direct {v3, v2, v0}, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;-><init>(Landroid/support/v4/media/MediaDescriptionCompat;I)V

    return-object v3
.end method

.method public static convertToMediaItem(Landroid/support/v4/media/MediaBrowserCompat$MediaItem;)Landroidx/media2/common/MediaItem;
    .locals 3
    .param p0, "item"    # Landroid/support/v4/media/MediaBrowserCompat$MediaItem;

    .line 221
    if-nez p0, :cond_0

    .line 222
    const/4 v0, 0x0

    return-object v0

    .line 224
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;->getDescription()Landroid/support/v4/media/MediaDescriptionCompat;

    move-result-object v0

    .line 225
    invoke-virtual {p0}, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;->isBrowsable()Z

    move-result v1

    invoke-virtual {p0}, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;->isPlayable()Z

    move-result v2

    .line 224
    invoke-static {v0, v1, v2}, Landroidx/media2/session/MediaUtils;->convertToMediaMetadata(Landroid/support/v4/media/MediaDescriptionCompat;ZZ)Landroidx/media2/common/MediaMetadata;

    move-result-object v0

    .line 226
    .local v0, "metadata":Landroidx/media2/common/MediaMetadata;
    new-instance v1, Landroidx/media2/common/MediaItem$Builder;

    invoke-direct {v1}, Landroidx/media2/common/MediaItem$Builder;-><init>()V

    .line 227
    invoke-virtual {v1, v0}, Landroidx/media2/common/MediaItem$Builder;->setMetadata(Landroidx/media2/common/MediaMetadata;)Landroidx/media2/common/MediaItem$Builder;

    move-result-object v1

    .line 228
    invoke-virtual {v1}, Landroidx/media2/common/MediaItem$Builder;->build()Landroidx/media2/common/MediaItem;

    move-result-object v1

    .line 226
    return-object v1
.end method

.method public static convertToMediaItem(Landroid/support/v4/media/MediaDescriptionCompat;)Landroidx/media2/common/MediaItem;
    .locals 2
    .param p0, "descriptionCompat"    # Landroid/support/v4/media/MediaDescriptionCompat;

    .line 286
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroidx/media2/session/MediaUtils;->convertToMediaMetadata(Landroid/support/v4/media/MediaDescriptionCompat;ZZ)Landroidx/media2/common/MediaMetadata;

    move-result-object v0

    .line 287
    .local v0, "metadata":Landroidx/media2/common/MediaMetadata;
    if-nez v0, :cond_0

    .line 288
    const/4 v1, 0x0

    return-object v1

    .line 290
    :cond_0
    new-instance v1, Landroidx/media2/common/MediaItem$Builder;

    invoke-direct {v1}, Landroidx/media2/common/MediaItem$Builder;-><init>()V

    invoke-virtual {v1, v0}, Landroidx/media2/common/MediaItem$Builder;->setMetadata(Landroidx/media2/common/MediaMetadata;)Landroidx/media2/common/MediaItem$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/media2/common/MediaItem$Builder;->build()Landroidx/media2/common/MediaItem;

    move-result-object v1

    return-object v1
.end method

.method public static convertToMediaItem(Landroid/support/v4/media/MediaMetadataCompat;)Landroidx/media2/common/MediaItem;
    .locals 7
    .param p0, "metadataCompat"    # Landroid/support/v4/media/MediaMetadataCompat;

    .line 251
    if-nez p0, :cond_0

    .line 252
    const/4 v0, 0x0

    return-object v0

    .line 255
    :cond_0
    new-instance v0, Landroidx/media2/common/MediaMetadata$Builder;

    invoke-direct {v0}, Landroidx/media2/common/MediaMetadata$Builder;-><init>()V

    const-string v1, "androidx.media2.metadata.PLAYABLE"

    const-wide/16 v2, 0x1

    .line 256
    invoke-virtual {v0, v1, v2, v3}, Landroidx/media2/common/MediaMetadata$Builder;->putLong(Ljava/lang/String;J)Landroidx/media2/common/MediaMetadata$Builder;

    move-result-object v0

    .line 257
    .local v0, "builder":Landroidx/media2/common/MediaMetadata$Builder;
    invoke-virtual {p0}, Landroid/support/v4/media/MediaMetadataCompat;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 258
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/support/v4/media/MediaMetadataCompat;->getBundle()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 259
    .local v3, "value":Ljava/lang/Object;
    sget-object v4, Landroidx/media2/session/MediaUtils;->METADATA_COMPAT_KEY_TO_METADATA_KEY:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    sget-object v4, Landroidx/media2/session/MediaUtils;->METADATA_COMPAT_KEY_TO_METADATA_KEY:Ljava/util/Map;

    .line 260
    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object v4, v2

    .line 261
    .local v4, "metadataKey":Ljava/lang/String;
    :goto_1
    instance-of v5, v3, Ljava/lang/CharSequence;

    if-eqz v5, :cond_2

    .line 262
    move-object v5, v3

    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v0, v4, v5}, Landroidx/media2/common/MediaMetadata$Builder;->putText(Ljava/lang/String;Ljava/lang/CharSequence;)Landroidx/media2/common/MediaMetadata$Builder;

    goto :goto_3

    .line 263
    :cond_2
    instance-of v5, v3, Landroid/graphics/Bitmap;

    if-eqz v5, :cond_3

    .line 264
    move-object v5, v3

    check-cast v5, Landroid/graphics/Bitmap;

    invoke-virtual {v0, v4, v5}, Landroidx/media2/common/MediaMetadata$Builder;->putBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroidx/media2/common/MediaMetadata$Builder;

    goto :goto_3

    .line 265
    :cond_3
    instance-of v5, v3, Ljava/lang/Long;

    if-eqz v5, :cond_4

    .line 266
    move-object v5, v3

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v0, v4, v5, v6}, Landroidx/media2/common/MediaMetadata$Builder;->putLong(Ljava/lang/String;J)Landroidx/media2/common/MediaMetadata$Builder;

    goto :goto_3

    .line 267
    :cond_4
    instance-of v5, v3, Landroid/support/v4/media/RatingCompat;

    if-nez v5, :cond_6

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x13

    if-lt v5, v6, :cond_5

    instance-of v5, v3, Landroid/media/Rating;

    if-eqz v5, :cond_5

    goto :goto_2

    :cond_5
    goto :goto_3

    .line 272
    :cond_6
    :goto_2
    :try_start_0
    invoke-virtual {p0, v2}, Landroid/support/v4/media/MediaMetadataCompat;->getRating(Ljava/lang/String;)Landroid/support/v4/media/RatingCompat;

    move-result-object v5

    .line 273
    .local v5, "rating":Landroid/support/v4/media/RatingCompat;
    invoke-static {v5}, Landroidx/media2/session/MediaUtils;->convertToRating(Landroid/support/v4/media/RatingCompat;)Landroidx/media2/common/Rating;

    move-result-object v6

    invoke-virtual {v0, v4, v6}, Landroidx/media2/common/MediaMetadata$Builder;->putRating(Ljava/lang/String;Landroidx/media2/common/Rating;)Landroidx/media2/common/MediaMetadata$Builder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 276
    goto :goto_3

    .line 274
    .end local v5    # "rating":Landroid/support/v4/media/RatingCompat;
    :catch_0
    move-exception v5

    .line 278
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/Object;
    .end local v4    # "metadataKey":Ljava/lang/String;
    :goto_3
    goto :goto_0

    .line 279
    :cond_7
    new-instance v1, Landroidx/media2/common/MediaItem$Builder;

    invoke-direct {v1}, Landroidx/media2/common/MediaItem$Builder;-><init>()V

    invoke-virtual {v0}, Landroidx/media2/common/MediaMetadata$Builder;->build()Landroidx/media2/common/MediaMetadata;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/media2/common/MediaItem$Builder;->setMetadata(Landroidx/media2/common/MediaMetadata;)Landroidx/media2/common/MediaItem$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/media2/common/MediaItem$Builder;->build()Landroidx/media2/common/MediaItem;

    move-result-object v1

    return-object v1
.end method

.method public static convertToMediaItem(Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;)Landroidx/media2/common/MediaItem;
    .locals 3
    .param p0, "item"    # Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;

    .line 235
    if-nez p0, :cond_0

    .line 236
    const/4 v0, 0x0

    return-object v0

    .line 239
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;->getDescription()Landroid/support/v4/media/MediaDescriptionCompat;

    move-result-object v0

    .line 240
    .local v0, "descriptionCompat":Landroid/support/v4/media/MediaDescriptionCompat;
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroidx/media2/session/MediaUtils;->convertToMediaMetadata(Landroid/support/v4/media/MediaDescriptionCompat;ZZ)Landroidx/media2/common/MediaMetadata;

    move-result-object v1

    .line 241
    .local v1, "metadata":Landroidx/media2/common/MediaMetadata;
    new-instance v2, Landroidx/media2/common/MediaItem$Builder;

    invoke-direct {v2}, Landroidx/media2/common/MediaItem$Builder;-><init>()V

    .line 242
    invoke-virtual {v2, v1}, Landroidx/media2/common/MediaItem$Builder;->setMetadata(Landroidx/media2/common/MediaMetadata;)Landroidx/media2/common/MediaItem$Builder;

    move-result-object v2

    .line 243
    invoke-virtual {v2}, Landroidx/media2/common/MediaItem$Builder;->build()Landroidx/media2/common/MediaItem;

    move-result-object v2

    .line 241
    return-object v2
.end method

.method public static convertToMediaItemList(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media2/common/MediaItem;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/support/v4/media/MediaBrowserCompat$MediaItem;",
            ">;"
        }
    .end annotation

    .line 204
    .local p0, "items":Ljava/util/List;, "Ljava/util/List<Landroidx/media2/common/MediaItem;>;"
    if-nez p0, :cond_0

    .line 205
    const/4 v0, 0x0

    return-object v0

    .line 207
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 208
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Landroid/support/v4/media/MediaBrowserCompat$MediaItem;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 209
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media2/common/MediaItem;

    invoke-static {v2}, Landroidx/media2/session/MediaUtils;->convertToMediaItem(Landroidx/media2/common/MediaItem;)Landroid/support/v4/media/MediaBrowserCompat$MediaItem;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 208
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 211
    .end local v1    # "i":I
    :cond_1
    return-object v0
.end method

.method private static convertToMediaMetadata(Landroid/support/v4/media/MediaDescriptionCompat;ZZ)Landroidx/media2/common/MediaMetadata;
    .locals 13
    .param p0, "descCompat"    # Landroid/support/v4/media/MediaDescriptionCompat;
    .param p1, "browsable"    # Z
    .param p2, "playable"    # Z

    .line 411
    if-nez p0, :cond_0

    .line 412
    const/4 v0, 0x0

    return-object v0

    .line 415
    :cond_0
    new-instance v0, Landroidx/media2/common/MediaMetadata$Builder;

    invoke-direct {v0}, Landroidx/media2/common/MediaMetadata$Builder;-><init>()V

    .line 416
    .local v0, "metadataBuilder":Landroidx/media2/common/MediaMetadata$Builder;
    const-string v1, "android.media.metadata.MEDIA_ID"

    invoke-virtual {p0}, Landroid/support/v4/media/MediaDescriptionCompat;->getMediaId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroidx/media2/common/MediaMetadata$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroidx/media2/common/MediaMetadata$Builder;

    .line 418
    invoke-virtual {p0}, Landroid/support/v4/media/MediaDescriptionCompat;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    .line 419
    .local v1, "title":Ljava/lang/CharSequence;
    if-eqz v1, :cond_1

    .line 420
    const-string v2, "android.media.metadata.DISPLAY_TITLE"

    invoke-virtual {v0, v2, v1}, Landroidx/media2/common/MediaMetadata$Builder;->putText(Ljava/lang/String;Ljava/lang/CharSequence;)Landroidx/media2/common/MediaMetadata$Builder;

    goto :goto_0

    .line 419
    :cond_1
    nop

    .line 423
    :goto_0
    invoke-virtual {p0}, Landroid/support/v4/media/MediaDescriptionCompat;->getDescription()Ljava/lang/CharSequence;

    move-result-object v2

    .line 424
    .local v2, "description":Ljava/lang/CharSequence;
    if-eqz v2, :cond_2

    .line 425
    const-string v3, "android.media.metadata.DISPLAY_DESCRIPTION"

    invoke-virtual {p0}, Landroid/support/v4/media/MediaDescriptionCompat;->getDescription()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroidx/media2/common/MediaMetadata$Builder;->putText(Ljava/lang/String;Ljava/lang/CharSequence;)Landroidx/media2/common/MediaMetadata$Builder;

    goto :goto_1

    .line 424
    :cond_2
    nop

    .line 428
    :goto_1
    invoke-virtual {p0}, Landroid/support/v4/media/MediaDescriptionCompat;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v3

    .line 429
    .local v3, "subtitle":Ljava/lang/CharSequence;
    if-eqz v3, :cond_3

    .line 430
    const-string v4, "android.media.metadata.DISPLAY_SUBTITLE"

    invoke-virtual {v0, v4, v3}, Landroidx/media2/common/MediaMetadata$Builder;->putText(Ljava/lang/String;Ljava/lang/CharSequence;)Landroidx/media2/common/MediaMetadata$Builder;

    goto :goto_2

    .line 429
    :cond_3
    nop

    .line 433
    :goto_2
    invoke-virtual {p0}, Landroid/support/v4/media/MediaDescriptionCompat;->getIconBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    .line 434
    .local v4, "icon":Landroid/graphics/Bitmap;
    if-eqz v4, :cond_4

    .line 435
    const-string v5, "android.media.metadata.DISPLAY_ICON"

    invoke-virtual {v0, v5, v4}, Landroidx/media2/common/MediaMetadata$Builder;->putBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroidx/media2/common/MediaMetadata$Builder;

    goto :goto_3

    .line 434
    :cond_4
    nop

    .line 438
    :goto_3
    invoke-virtual {p0}, Landroid/support/v4/media/MediaDescriptionCompat;->getIconUri()Landroid/net/Uri;

    move-result-object v5

    .line 439
    .local v5, "iconUri":Landroid/net/Uri;
    if-eqz v5, :cond_5

    .line 440
    const-string v6, "android.media.metadata.DISPLAY_ICON_URI"

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroidx/media2/common/MediaMetadata$Builder;->putText(Ljava/lang/String;Ljava/lang/CharSequence;)Landroidx/media2/common/MediaMetadata$Builder;

    goto :goto_4

    .line 439
    :cond_5
    nop

    .line 443
    :goto_4
    invoke-virtual {p0}, Landroid/support/v4/media/MediaDescriptionCompat;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    .line 444
    .local v6, "bundle":Landroid/os/Bundle;
    if-eqz v6, :cond_6

    .line 445
    invoke-virtual {v0, v6}, Landroidx/media2/common/MediaMetadata$Builder;->setExtras(Landroid/os/Bundle;)Landroidx/media2/common/MediaMetadata$Builder;

    goto :goto_5

    .line 444
    :cond_6
    nop

    .line 448
    :goto_5
    invoke-virtual {p0}, Landroid/support/v4/media/MediaDescriptionCompat;->getMediaUri()Landroid/net/Uri;

    move-result-object v7

    .line 449
    .local v7, "mediaUri":Landroid/net/Uri;
    if-eqz v7, :cond_7

    .line 450
    const-string v8, "android.media.metadata.MEDIA_URI"

    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Landroidx/media2/common/MediaMetadata$Builder;->putText(Ljava/lang/String;Ljava/lang/CharSequence;)Landroidx/media2/common/MediaMetadata$Builder;

    goto :goto_6

    .line 449
    :cond_7
    nop

    .line 453
    :goto_6
    const-wide/16 v8, 0x0

    if-eqz v6, :cond_8

    const-string v10, "android.media.extra.BT_FOLDER_TYPE"

    invoke-virtual {v6, v10}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 454
    const-string v10, "androidx.media2.metadata.BROWSABLE"

    const-string v11, "android.media.extra.BT_FOLDER_TYPE"

    .line 455
    invoke-virtual {v6, v11}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v11

    .line 454
    invoke-virtual {v0, v10, v11, v12}, Landroidx/media2/common/MediaMetadata$Builder;->putLong(Ljava/lang/String;J)Landroidx/media2/common/MediaMetadata$Builder;

    goto :goto_7

    .line 453
    :cond_8
    nop

    .line 456
    if-eqz p1, :cond_9

    .line 457
    const-string v10, "androidx.media2.metadata.BROWSABLE"

    invoke-virtual {v0, v10, v8, v9}, Landroidx/media2/common/MediaMetadata$Builder;->putLong(Ljava/lang/String;J)Landroidx/media2/common/MediaMetadata$Builder;

    goto :goto_7

    .line 459
    :cond_9
    const-string v10, "androidx.media2.metadata.BROWSABLE"

    const-wide/16 v11, -0x1

    invoke-virtual {v0, v10, v11, v12}, Landroidx/media2/common/MediaMetadata$Builder;->putLong(Ljava/lang/String;J)Landroidx/media2/common/MediaMetadata$Builder;

    .line 462
    :goto_7
    const-string v10, "androidx.media2.metadata.PLAYABLE"

    if-eqz p2, :cond_a

    const-wide/16 v8, 0x1

    nop

    :cond_a
    invoke-virtual {v0, v10, v8, v9}, Landroidx/media2/common/MediaMetadata$Builder;->putLong(Ljava/lang/String;J)Landroidx/media2/common/MediaMetadata$Builder;

    .line 464
    invoke-virtual {v0}, Landroidx/media2/common/MediaMetadata$Builder;->build()Landroidx/media2/common/MediaMetadata;

    move-result-object v8

    return-object v8
.end method

.method public static convertToMediaMetadata(Ljava/lang/CharSequence;)Landroidx/media2/common/MediaMetadata;
    .locals 4
    .param p0, "queueTitle"    # Ljava/lang/CharSequence;

    .line 471
    if-nez p0, :cond_0

    .line 472
    const/4 v0, 0x0

    return-object v0

    .line 474
    :cond_0
    new-instance v0, Landroidx/media2/common/MediaMetadata$Builder;

    invoke-direct {v0}, Landroidx/media2/common/MediaMetadata$Builder;-><init>()V

    const-string v1, "android.media.metadata.TITLE"

    .line 475
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroidx/media2/common/MediaMetadata$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroidx/media2/common/MediaMetadata$Builder;

    move-result-object v0

    const-string v1, "androidx.media2.metadata.BROWSABLE"

    const-wide/16 v2, 0x0

    .line 476
    invoke-virtual {v0, v1, v2, v3}, Landroidx/media2/common/MediaMetadata$Builder;->putLong(Ljava/lang/String;J)Landroidx/media2/common/MediaMetadata$Builder;

    move-result-object v0

    const-string v1, "androidx.media2.metadata.PLAYABLE"

    const-wide/16 v2, 0x1

    .line 477
    invoke-virtual {v0, v1, v2, v3}, Landroidx/media2/common/MediaMetadata$Builder;->putLong(Ljava/lang/String;J)Landroidx/media2/common/MediaMetadata$Builder;

    move-result-object v0

    .line 478
    invoke-virtual {v0}, Landroidx/media2/common/MediaMetadata$Builder;->build()Landroidx/media2/common/MediaMetadata;

    move-result-object v0

    .line 474
    return-object v0
.end method

.method public static convertToMediaMetadataCompat(Landroidx/media2/common/MediaMetadata;)Landroid/support/v4/media/MediaMetadataCompat;
    .locals 7
    .param p0, "metadata"    # Landroidx/media2/common/MediaMetadata;

    .line 488
    if-nez p0, :cond_0

    .line 489
    const/4 v0, 0x0

    return-object v0

    .line 491
    :cond_0
    new-instance v0, Landroid/support/v4/media/MediaMetadataCompat$Builder;

    invoke-direct {v0}, Landroid/support/v4/media/MediaMetadataCompat$Builder;-><init>()V

    .line 492
    .local v0, "builder":Landroid/support/v4/media/MediaMetadataCompat$Builder;
    invoke-virtual {p0}, Landroidx/media2/common/MediaMetadata;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 493
    .local v2, "key":Ljava/lang/String;
    sget-object v3, Landroidx/media2/session/MediaUtils;->METADATA_KEY_TO_METADATA_COMPAT_KEY:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    sget-object v3, Landroidx/media2/session/MediaUtils;->METADATA_KEY_TO_METADATA_COMPAT_KEY:Ljava/util/Map;

    .line 494
    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object v3, v2

    .line 495
    .local v3, "compatKey":Ljava/lang/String;
    :goto_1
    invoke-virtual {p0, v2}, Landroidx/media2/common/MediaMetadata;->getObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 496
    .local v4, "value":Ljava/lang/Object;
    instance-of v5, v4, Ljava/lang/CharSequence;

    if-eqz v5, :cond_2

    .line 497
    move-object v5, v4

    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v0, v3, v5}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->putText(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/support/v4/media/MediaMetadataCompat$Builder;

    goto :goto_2

    .line 498
    :cond_2
    instance-of v5, v4, Landroid/graphics/Bitmap;

    if-eqz v5, :cond_3

    .line 499
    move-object v5, v4

    check-cast v5, Landroid/graphics/Bitmap;

    invoke-virtual {v0, v3, v5}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->putBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/support/v4/media/MediaMetadataCompat$Builder;

    goto :goto_2

    .line 500
    :cond_3
    instance-of v5, v4, Ljava/lang/Long;

    if-eqz v5, :cond_4

    .line 501
    move-object v5, v4

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v0, v3, v5, v6}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->putLong(Ljava/lang/String;J)Landroid/support/v4/media/MediaMetadataCompat$Builder;

    goto :goto_2

    .line 502
    :cond_4
    instance-of v5, v4, Landroid/os/Bundle;

    if-eqz v5, :cond_5

    const-string v5, "androidx.media2.metadata.EXTRAS"

    invoke-static {v2, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 506
    :try_start_0
    invoke-virtual {p0, v2}, Landroidx/media2/common/MediaMetadata;->getRating(Ljava/lang/String;)Landroidx/media2/common/Rating;

    move-result-object v5

    .line 507
    .local v5, "rating":Landroidx/media2/common/Rating;
    invoke-static {v5}, Landroidx/media2/session/MediaUtils;->convertToRatingCompat(Landroidx/media2/common/Rating;)Landroid/support/v4/media/RatingCompat;

    move-result-object v6

    invoke-virtual {v0, v3, v6}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->putRating(Ljava/lang/String;Landroid/support/v4/media/RatingCompat;)Landroid/support/v4/media/MediaMetadataCompat$Builder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 510
    goto :goto_2

    .line 508
    .end local v5    # "rating":Landroidx/media2/common/Rating;
    :catch_0
    move-exception v5

    goto :goto_2

    .line 502
    :cond_5
    nop

    .line 512
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "compatKey":Ljava/lang/String;
    .end local v4    # "value":Ljava/lang/Object;
    :goto_2
    goto :goto_0

    .line 513
    :cond_6
    invoke-virtual {v0}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->build()Landroid/support/v4/media/MediaMetadataCompat;

    move-result-object v1

    return-object v1
.end method

.method public static convertToPlaybackStateCompatState(II)I
    .locals 2
    .param p0, "playerState"    # I
    .param p1, "bufferingState"    # I

    .line 625
    const/4 v0, 0x2

    const/4 v1, 0x7

    packed-switch p0, :pswitch_data_0

    .line 640
    return v1

    .line 637
    :pswitch_0
    return v1

    .line 627
    :pswitch_1
    if-eq p1, v0, :cond_0

    .line 631
    const/4 v0, 0x3

    return v0

    .line 629
    :cond_0
    const/4 v0, 0x6

    return v0

    .line 633
    :pswitch_2
    return v0

    .line 635
    :pswitch_3
    const/4 v0, 0x0

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static convertToPlayerState(Landroid/support/v4/media/session/PlaybackStateCompat;)I
    .locals 3
    .param p0, "state"    # Landroid/support/v4/media/session/PlaybackStateCompat;

    .line 647
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 648
    return v0

    .line 650
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/media/session/PlaybackStateCompat;->getState()I

    move-result v1

    const/4 v2, 0x3

    packed-switch v1, :pswitch_data_0

    .line 668
    return v2

    .line 652
    :pswitch_0
    return v2

    .line 666
    :pswitch_1
    const/4 v0, 0x2

    return v0

    .line 658
    :pswitch_2
    const/4 v0, 0x1

    return v0

    .line 654
    :pswitch_3
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public static convertToQueueItemList(Ljava/util/List;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media2/common/MediaItem;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;",
            ">;"
        }
    .end annotation

    .line 340
    .local p0, "items":Ljava/util/List;, "Ljava/util/List<Landroidx/media2/common/MediaItem;>;"
    if-nez p0, :cond_0

    .line 341
    const/4 v0, 0x0

    return-object v0

    .line 343
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 344
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 345
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media2/common/MediaItem;

    .line 346
    .local v2, "item":Landroidx/media2/common/MediaItem;
    invoke-virtual {v2}, Landroidx/media2/common/MediaItem;->getMetadata()Landroidx/media2/common/MediaMetadata;

    move-result-object v3

    if-nez v3, :cond_1

    new-instance v3, Landroid/support/v4/media/MediaDescriptionCompat$Builder;

    invoke-direct {v3}, Landroid/support/v4/media/MediaDescriptionCompat$Builder;-><init>()V

    .line 347
    invoke-virtual {v2}, Landroidx/media2/common/MediaItem;->getMediaId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/v4/media/MediaDescriptionCompat$Builder;->setMediaId(Ljava/lang/String;)Landroid/support/v4/media/MediaDescriptionCompat$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/media/MediaDescriptionCompat$Builder;->build()Landroid/support/v4/media/MediaDescriptionCompat;

    move-result-object v3

    goto :goto_1

    .line 348
    :cond_1
    invoke-virtual {v2}, Landroidx/media2/common/MediaItem;->getMetadata()Landroidx/media2/common/MediaMetadata;

    move-result-object v3

    invoke-static {v3}, Landroidx/media2/session/MediaUtils;->convertToMediaMetadataCompat(Landroidx/media2/common/MediaMetadata;)Landroid/support/v4/media/MediaMetadataCompat;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/media/MediaMetadataCompat;->getDescription()Landroid/support/v4/media/MediaDescriptionCompat;

    move-result-object v3

    :goto_1
    nop

    .line 349
    .local v3, "description":Landroid/support/v4/media/MediaDescriptionCompat;
    new-instance v4, Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;

    int-to-long v5, v1

    invoke-direct {v4, v3, v5, v6}, Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;-><init>(Landroid/support/v4/media/MediaDescriptionCompat;J)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 344
    .end local v2    # "item":Landroidx/media2/common/MediaItem;
    .end local v3    # "description":Landroid/support/v4/media/MediaDescriptionCompat;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 351
    .end local v1    # "i":I
    :cond_2
    return-object v0
.end method

.method public static convertToRating(Landroid/support/v4/media/RatingCompat;)Landroidx/media2/common/Rating;
    .locals 3
    .param p0, "ratingCompat"    # Landroid/support/v4/media/RatingCompat;

    .line 523
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 524
    return-object v0

    .line 526
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/media/RatingCompat;->getRatingStyle()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 547
    return-object v0

    .line 543
    :pswitch_0
    invoke-virtual {p0}, Landroid/support/v4/media/RatingCompat;->isRated()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Landroidx/media2/session/PercentageRating;

    .line 544
    invoke-virtual {p0}, Landroid/support/v4/media/RatingCompat;->getPercentRating()F

    move-result v1

    invoke-direct {v0, v1}, Landroidx/media2/session/PercentageRating;-><init>(F)V

    goto :goto_0

    :cond_1
    new-instance v0, Landroidx/media2/session/PercentageRating;

    invoke-direct {v0}, Landroidx/media2/session/PercentageRating;-><init>()V

    .line 543
    :goto_0
    return-object v0

    .line 534
    :pswitch_1
    invoke-virtual {p0}, Landroid/support/v4/media/RatingCompat;->isRated()Z

    move-result v0

    const/4 v1, 0x5

    if-eqz v0, :cond_2

    new-instance v0, Landroidx/media2/session/StarRating;

    .line 535
    invoke-virtual {p0}, Landroid/support/v4/media/RatingCompat;->getStarRating()F

    move-result v2

    invoke-direct {v0, v1, v2}, Landroidx/media2/session/StarRating;-><init>(IF)V

    goto :goto_1

    :cond_2
    new-instance v0, Landroidx/media2/session/StarRating;

    invoke-direct {v0, v1}, Landroidx/media2/session/StarRating;-><init>(I)V

    .line 534
    :goto_1
    return-object v0

    .line 531
    :pswitch_2
    invoke-virtual {p0}, Landroid/support/v4/media/RatingCompat;->isRated()Z

    move-result v0

    const/4 v1, 0x4

    if-eqz v0, :cond_3

    new-instance v0, Landroidx/media2/session/StarRating;

    .line 532
    invoke-virtual {p0}, Landroid/support/v4/media/RatingCompat;->getStarRating()F

    move-result v2

    invoke-direct {v0, v1, v2}, Landroidx/media2/session/StarRating;-><init>(IF)V

    goto :goto_2

    :cond_3
    new-instance v0, Landroidx/media2/session/StarRating;

    invoke-direct {v0, v1}, Landroidx/media2/session/StarRating;-><init>(I)V

    .line 531
    :goto_2
    return-object v0

    .line 528
    :pswitch_3
    invoke-virtual {p0}, Landroid/support/v4/media/RatingCompat;->isRated()Z

    move-result v0

    const/4 v1, 0x3

    if-eqz v0, :cond_4

    new-instance v0, Landroidx/media2/session/StarRating;

    .line 529
    invoke-virtual {p0}, Landroid/support/v4/media/RatingCompat;->getStarRating()F

    move-result v2

    invoke-direct {v0, v1, v2}, Landroidx/media2/session/StarRating;-><init>(IF)V

    goto :goto_3

    :cond_4
    new-instance v0, Landroidx/media2/session/StarRating;

    invoke-direct {v0, v1}, Landroidx/media2/session/StarRating;-><init>(I)V

    .line 528
    :goto_3
    return-object v0

    .line 540
    :pswitch_4
    invoke-virtual {p0}, Landroid/support/v4/media/RatingCompat;->isRated()Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Landroidx/media2/session/ThumbRating;

    .line 541
    invoke-virtual {p0}, Landroid/support/v4/media/RatingCompat;->isThumbUp()Z

    move-result v1

    invoke-direct {v0, v1}, Landroidx/media2/session/ThumbRating;-><init>(Z)V

    goto :goto_4

    :cond_5
    new-instance v0, Landroidx/media2/session/ThumbRating;

    invoke-direct {v0}, Landroidx/media2/session/ThumbRating;-><init>()V

    .line 540
    :goto_4
    return-object v0

    .line 537
    :pswitch_5
    invoke-virtual {p0}, Landroid/support/v4/media/RatingCompat;->isRated()Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance v0, Landroidx/media2/session/HeartRating;

    .line 538
    invoke-virtual {p0}, Landroid/support/v4/media/RatingCompat;->hasHeart()Z

    move-result v1

    invoke-direct {v0, v1}, Landroidx/media2/session/HeartRating;-><init>(Z)V

    goto :goto_5

    :cond_6
    new-instance v0, Landroidx/media2/session/HeartRating;

    invoke-direct {v0}, Landroidx/media2/session/HeartRating;-><init>()V

    .line 537
    :goto_5
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static convertToRatingCompat(Landroidx/media2/common/Rating;)Landroid/support/v4/media/RatingCompat;
    .locals 3
    .param p0, "rating"    # Landroidx/media2/common/Rating;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    .line 559
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 560
    return-object v0

    .line 562
    :cond_0
    invoke-static {p0}, Landroidx/media2/session/MediaUtils;->getRatingCompatStyle(Landroidx/media2/common/Rating;)I

    move-result v1

    .line 563
    .local v1, "ratingCompatStyle":I
    invoke-interface {p0}, Landroidx/media2/common/Rating;->isRated()Z

    move-result v2

    if-nez v2, :cond_1

    .line 564
    invoke-static {v1}, Landroid/support/v4/media/RatingCompat;->newUnratedRating(I)Landroid/support/v4/media/RatingCompat;

    move-result-object v0

    return-object v0

    .line 567
    :cond_1
    packed-switch v1, :pswitch_data_0

    .line 581
    return-object v0

    .line 578
    :pswitch_0
    move-object v0, p0

    check-cast v0, Landroidx/media2/session/PercentageRating;

    .line 579
    invoke-virtual {v0}, Landroidx/media2/session/PercentageRating;->getPercentRating()F

    move-result v0

    .line 578
    invoke-static {v0}, Landroid/support/v4/media/RatingCompat;->newPercentageRating(F)Landroid/support/v4/media/RatingCompat;

    move-result-object v0

    return-object v0

    .line 571
    :pswitch_1
    move-object v0, p0

    check-cast v0, Landroidx/media2/session/StarRating;

    .line 572
    invoke-virtual {v0}, Landroidx/media2/session/StarRating;->getStarRating()F

    move-result v0

    .line 571
    invoke-static {v1, v0}, Landroid/support/v4/media/RatingCompat;->newStarRating(IF)Landroid/support/v4/media/RatingCompat;

    move-result-object v0

    return-object v0

    .line 576
    :pswitch_2
    move-object v0, p0

    check-cast v0, Landroidx/media2/session/ThumbRating;

    invoke-virtual {v0}, Landroidx/media2/session/ThumbRating;->isThumbUp()Z

    move-result v0

    invoke-static {v0}, Landroid/support/v4/media/RatingCompat;->newThumbRating(Z)Landroid/support/v4/media/RatingCompat;

    move-result-object v0

    return-object v0

    .line 574
    :pswitch_3
    move-object v0, p0

    check-cast v0, Landroidx/media2/session/HeartRating;

    invoke-virtual {v0}, Landroidx/media2/session/HeartRating;->hasHeart()Z

    move-result v0

    invoke-static {v0}, Landroid/support/v4/media/RatingCompat;->newHeartRating(Z)Landroid/support/v4/media/RatingCompat;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static convertToRootHints(Landroidx/media2/session/MediaLibraryService$LibraryParams;)Landroid/os/Bundle;
    .locals 3
    .param p0, "params"    # Landroidx/media2/session/MediaLibraryService$LibraryParams;

    .line 779
    if-nez p0, :cond_0

    .line 780
    const/4 v0, 0x0

    return-object v0

    .line 782
    :cond_0
    invoke-virtual {p0}, Landroidx/media2/session/MediaLibraryService$LibraryParams;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/os/Bundle;

    .line 783
    invoke-virtual {p0}, Landroidx/media2/session/MediaLibraryService$LibraryParams;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    :goto_0
    nop

    .line 784
    .local v0, "rootHints":Landroid/os/Bundle;
    const-string v1, "android.service.media.extra.RECENT"

    invoke-virtual {p0}, Landroidx/media2/session/MediaLibraryService$LibraryParams;->isRecent()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 785
    const-string v1, "android.service.media.extra.OFFLINE"

    invoke-virtual {p0}, Landroidx/media2/session/MediaLibraryService$LibraryParams;->isOffline()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 786
    const-string v1, "android.service.media.extra.SUGGESTED"

    invoke-virtual {p0}, Landroidx/media2/session/MediaLibraryService$LibraryParams;->isSuggested()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 787
    return-object v0
.end method

.method public static convertToSessionCommandGroup(JLandroid/support/v4/media/session/PlaybackStateCompat;)Landroidx/media2/session/SessionCommandGroup;
    .locals 7
    .param p0, "sessionFlags"    # J
    .param p2, "state"    # Landroid/support/v4/media/session/PlaybackStateCompat;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 824
    new-instance v0, Landroidx/media2/session/SessionCommandGroup$Builder;

    invoke-direct {v0}, Landroidx/media2/session/SessionCommandGroup$Builder;-><init>()V

    .line 825
    .local v0, "commandsBuilder":Landroidx/media2/session/SessionCommandGroup$Builder;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/media2/session/SessionCommandGroup$Builder;->addAllPlayerBasicCommands(I)Landroidx/media2/session/SessionCommandGroup$Builder;

    .line 826
    const-wide/16 v2, 0x4

    and-long/2addr v2, p0

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-eqz v6, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 827
    .local v2, "includePlaylistCommands":Z
    :goto_0
    if-eqz v2, :cond_1

    .line 828
    invoke-virtual {v0, v1}, Landroidx/media2/session/SessionCommandGroup$Builder;->addAllPlayerPlaylistCommands(I)Landroidx/media2/session/SessionCommandGroup$Builder;

    goto :goto_1

    .line 827
    :cond_1
    nop

    .line 830
    :goto_1
    invoke-virtual {v0, v1}, Landroidx/media2/session/SessionCommandGroup$Builder;->addAllVolumeCommands(I)Landroidx/media2/session/SessionCommandGroup$Builder;

    .line 831
    invoke-virtual {v0, v1}, Landroidx/media2/session/SessionCommandGroup$Builder;->addAllSessionCommands(I)Landroidx/media2/session/SessionCommandGroup$Builder;

    .line 833
    new-instance v1, Landroidx/media2/session/SessionCommand;

    const/16 v3, 0x2714

    invoke-direct {v1, v3}, Landroidx/media2/session/SessionCommand;-><init>(I)V

    invoke-virtual {v0, v1}, Landroidx/media2/session/SessionCommandGroup$Builder;->removeCommand(Landroidx/media2/session/SessionCommand;)Landroidx/media2/session/SessionCommandGroup$Builder;

    .line 836
    if-eqz p2, :cond_3

    invoke-virtual {p2}, Landroid/support/v4/media/session/PlaybackStateCompat;->getCustomActions()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 837
    invoke-virtual {p2}, Landroid/support/v4/media/session/PlaybackStateCompat;->getCustomActions()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;

    .line 838
    .local v3, "customAction":Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;
    new-instance v4, Landroidx/media2/session/SessionCommand;

    .line 839
    invoke-virtual {v3}, Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroidx/media2/session/SessionCommand;-><init>(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 838
    invoke-virtual {v0, v4}, Landroidx/media2/session/SessionCommandGroup$Builder;->addCommand(Landroidx/media2/session/SessionCommand;)Landroidx/media2/session/SessionCommandGroup$Builder;

    .line 840
    .end local v3    # "customAction":Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;
    goto :goto_2

    .line 837
    :cond_2
    goto :goto_3

    .line 836
    :cond_3
    nop

    .line 842
    :goto_3
    invoke-virtual {v0}, Landroidx/media2/session/SessionCommandGroup$Builder;->build()Landroidx/media2/session/SessionCommandGroup;

    move-result-object v1

    return-object v1
.end method

.method public static createMediaDescriptionCompat(Ljava/lang/String;)Landroid/support/v4/media/MediaDescriptionCompat;
    .locals 1
    .param p0, "mediaId"    # Ljava/lang/String;

    .line 329
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 330
    const/4 v0, 0x0

    return-object v0

    .line 332
    :cond_0
    new-instance v0, Landroid/support/v4/media/MediaDescriptionCompat$Builder;

    invoke-direct {v0}, Landroid/support/v4/media/MediaDescriptionCompat$Builder;-><init>()V

    invoke-virtual {v0, p0}, Landroid/support/v4/media/MediaDescriptionCompat$Builder;->setMediaId(Ljava/lang/String;)Landroid/support/v4/media/MediaDescriptionCompat$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/media/MediaDescriptionCompat$Builder;->build()Landroid/support/v4/media/MediaDescriptionCompat;

    move-result-object v0

    return-object v0
.end method

.method private static getRatingCompatStyle(Landroidx/media2/common/Rating;)I
    .locals 1
    .param p0, "rating"    # Landroidx/media2/common/Rating;

    .line 730
    instance-of v0, p0, Landroidx/media2/session/HeartRating;

    if-eqz v0, :cond_0

    .line 731
    const/4 v0, 0x1

    return v0

    .line 732
    :cond_0
    instance-of v0, p0, Landroidx/media2/session/ThumbRating;

    if-eqz v0, :cond_1

    .line 733
    const/4 v0, 0x2

    return v0

    .line 734
    :cond_1
    instance-of v0, p0, Landroidx/media2/session/StarRating;

    if-eqz v0, :cond_2

    .line 735
    move-object v0, p0

    check-cast v0, Landroidx/media2/session/StarRating;

    invoke-virtual {v0}, Landroidx/media2/session/StarRating;->getMaxStars()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 741
    goto :goto_0

    :pswitch_0
    const/4 v0, 0x5

    return v0

    .line 739
    :pswitch_1
    const/4 v0, 0x4

    return v0

    .line 737
    :pswitch_2
    const/4 v0, 0x3

    return v0

    .line 743
    :cond_2
    instance-of v0, p0, Landroidx/media2/session/PercentageRating;

    if-eqz v0, :cond_3

    .line 744
    const/4 v0, 0x6

    return v0

    .line 743
    :cond_3
    nop

    .line 746
    :goto_0
    const/4 v0, 0x0

    return v0

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static isUnparcelableBundle(Landroid/os/Bundle;)Z
    .locals 2
    .param p0, "bundle"    # Landroid/os/Bundle;

    .line 702
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 703
    return v0

    .line 705
    :cond_0
    const-class v1, Landroidx/media2/session/MediaUtils;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 707
    :try_start_0
    invoke-virtual {p0}, Landroid/os/Bundle;->size()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 710
    nop

    .line 711
    return v0

    .line 708
    :catch_0
    move-exception v0

    .line 709
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x1

    return v1
.end method

.method public static keepUnparcelableBundlesOnly(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    .line 718
    .local p0, "bundles":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    if-nez p0, :cond_0

    .line 719
    return-void

    .line 721
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    .line 722
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 723
    .local v1, "bundle":Landroid/os/Bundle;
    invoke-static {v1}, Landroidx/media2/session/MediaUtils;->isUnparcelableBundle(Landroid/os/Bundle;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 724
    invoke-interface {p0, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 723
    :cond_1
    nop

    .line 721
    .end local v1    # "bundle":Landroid/os/Bundle;
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 727
    .end local v0    # "i":I
    :cond_2
    return-void
.end method

.method public static removeNullElements(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .param p0    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 797
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    if-nez p0, :cond_0

    .line 798
    const/4 v0, 0x0

    return-object v0

    .line 800
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 801
    .local v0, "newList":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 802
    .local v2, "item":Ljava/lang/Object;, "TT;"
    if-eqz v2, :cond_1

    .line 803
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 802
    :cond_1
    nop

    .line 805
    .end local v2    # "item":Ljava/lang/Object;, "TT;"
    :goto_1
    goto :goto_0

    .line 806
    :cond_2
    return-object v0
.end method

.method public static toBufferingState(I)I
    .locals 1
    .param p0, "playbackStateCompatState"    # I

    .line 676
    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x6

    if-eq p0, v0, :cond_0

    .line 682
    const/4 v0, 0x0

    return v0

    .line 678
    :cond_0
    const/4 v0, 0x2

    return v0

    .line 680
    :cond_1
    return v0
.end method

.method public static toPlaybackInfo2(Landroid/support/v4/media/session/MediaControllerCompat$PlaybackInfo;)Landroidx/media2/session/MediaController$PlaybackInfo;
    .locals 5
    .param p0, "info"    # Landroid/support/v4/media/session/MediaControllerCompat$PlaybackInfo;

    .line 692
    invoke-virtual {p0}, Landroid/support/v4/media/session/MediaControllerCompat$PlaybackInfo;->getPlaybackType()I

    move-result v0

    new-instance v1, Landroidx/media/AudioAttributesCompat$Builder;

    invoke-direct {v1}, Landroidx/media/AudioAttributesCompat$Builder;-><init>()V

    .line 694
    invoke-virtual {p0}, Landroid/support/v4/media/session/MediaControllerCompat$PlaybackInfo;->getAudioStream()I

    move-result v2

    invoke-virtual {v1, v2}, Landroidx/media/AudioAttributesCompat$Builder;->setLegacyStreamType(I)Landroidx/media/AudioAttributesCompat$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/media/AudioAttributesCompat$Builder;->build()Landroidx/media/AudioAttributesCompat;

    move-result-object v1

    .line 695
    invoke-virtual {p0}, Landroid/support/v4/media/session/MediaControllerCompat$PlaybackInfo;->getVolumeControl()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/v4/media/session/MediaControllerCompat$PlaybackInfo;->getMaxVolume()I

    move-result v3

    invoke-virtual {p0}, Landroid/support/v4/media/session/MediaControllerCompat$PlaybackInfo;->getCurrentVolume()I

    move-result v4

    .line 692
    invoke-static {v0, v1, v2, v3, v4}, Landroidx/media2/session/MediaController$PlaybackInfo;->createPlaybackInfo(ILandroidx/media/AudioAttributesCompat;III)Landroidx/media2/session/MediaController$PlaybackInfo;

    move-result-object v0

    return-object v0
.end method

.method public static truncateListBySize(Ljava/util/List;I)Ljava/util/List;
    .locals 5
    .param p1, "sizeLimitInBytes"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Ljava/util/List<",
            "TT;>;I)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 380
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    if-nez p0, :cond_0

    .line 381
    const/4 v0, 0x0

    return-object v0

    .line 383
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 384
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 385
    .local v1, "parcel":Landroid/os/Parcel;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 387
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Parcelable;

    .line 388
    .local v3, "item":Landroid/os/Parcelable;, "TT;"
    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 389
    invoke-virtual {v1}, Landroid/os/Parcel;->dataSize()I

    move-result v4

    if-ge v4, p1, :cond_1

    .line 390
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 385
    .end local v3    # "item":Landroid/os/Parcelable;, "TT;"
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 389
    .restart local v3    # "item":Landroid/os/Parcelable;, "TT;"
    :cond_1
    goto :goto_1

    .line 385
    .end local v3    # "item":Landroid/os/Parcelable;, "TT;"
    :cond_2
    nop

    .line 395
    .end local v2    # "i":I
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 396
    return-object v0
.end method

.method public static upcastForPreparceling(Landroidx/media2/common/MediaItem;)Landroidx/media2/common/MediaItem;
    .locals 3
    .param p0, "item"    # Landroidx/media2/common/MediaItem;

    .line 138
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Landroidx/media2/common/MediaItem;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 141
    :cond_0
    new-instance v0, Landroidx/media2/common/MediaItem$Builder;

    invoke-direct {v0}, Landroidx/media2/common/MediaItem$Builder;-><init>()V

    .line 142
    invoke-virtual {p0}, Landroidx/media2/common/MediaItem;->getStartPosition()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroidx/media2/common/MediaItem$Builder;->setStartPosition(J)Landroidx/media2/common/MediaItem$Builder;

    move-result-object v0

    .line 143
    invoke-virtual {p0}, Landroidx/media2/common/MediaItem;->getEndPosition()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroidx/media2/common/MediaItem$Builder;->setEndPosition(J)Landroidx/media2/common/MediaItem$Builder;

    move-result-object v0

    .line 144
    invoke-virtual {p0}, Landroidx/media2/common/MediaItem;->getMetadata()Landroidx/media2/common/MediaMetadata;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/media2/common/MediaItem$Builder;->setMetadata(Landroidx/media2/common/MediaMetadata;)Landroidx/media2/common/MediaItem$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media2/common/MediaItem$Builder;->build()Landroidx/media2/common/MediaItem;

    move-result-object v0

    .line 141
    return-object v0

    .line 138
    :cond_1
    :goto_0
    nop

    .line 139
    return-object p0
.end method
