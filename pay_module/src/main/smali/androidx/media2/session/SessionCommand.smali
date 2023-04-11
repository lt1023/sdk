.class public final Landroidx/media2/session/SessionCommand;
.super Ljava/lang/Object;
.source "SessionCommand.java"

# interfaces
.implements Landroidx/versionedparcelable/VersionedParcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/session/SessionCommand$Range;,
        Landroidx/media2/session/SessionCommand$CommandCode;,
        Landroidx/media2/session/SessionCommand$CommandVersion;
    }
.end annotation


# static fields
.field public static final COMMAND_CODE_CUSTOM:I = 0x0

.field public static final COMMAND_CODE_LIBRARY_GET_CHILDREN:I = 0xc353

.field public static final COMMAND_CODE_LIBRARY_GET_ITEM:I = 0xc354

.field public static final COMMAND_CODE_LIBRARY_GET_LIBRARY_ROOT:I = 0xc350

.field public static final COMMAND_CODE_LIBRARY_GET_SEARCH_RESULT:I = 0xc356

.field public static final COMMAND_CODE_LIBRARY_SEARCH:I = 0xc355

.field public static final COMMAND_CODE_LIBRARY_SUBSCRIBE:I = 0xc351

.field public static final COMMAND_CODE_LIBRARY_UNSUBSCRIBE:I = 0xc352

.field public static final COMMAND_CODE_PLAYER_ADD_PLAYLIST_ITEM:I = 0x271d

.field public static final COMMAND_CODE_PLAYER_DESELECT_TRACK:I = 0x2afa
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation
.end field

.field public static final COMMAND_CODE_PLAYER_GET_CURRENT_MEDIA_ITEM:I = 0x2720

.field public static final COMMAND_CODE_PLAYER_GET_PLAYLIST:I = 0x2715

.field public static final COMMAND_CODE_PLAYER_GET_PLAYLIST_METADATA:I = 0x271c

.field public static final COMMAND_CODE_PLAYER_PAUSE:I = 0x2711

.field public static final COMMAND_CODE_PLAYER_PLAY:I = 0x2710

.field public static final COMMAND_CODE_PLAYER_PREPARE:I = 0x2712

.field public static final COMMAND_CODE_PLAYER_REMOVE_PLAYLIST_ITEM:I = 0x271e

.field public static final COMMAND_CODE_PLAYER_REPLACE_PLAYLIST_ITEM:I = 0x271f

.field public static final COMMAND_CODE_PLAYER_SEEK_TO:I = 0x2713

.field public static final COMMAND_CODE_PLAYER_SELECT_TRACK:I = 0x2af9
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation
.end field

.field public static final COMMAND_CODE_PLAYER_SET_MEDIA_ITEM:I = 0x2722

.field public static final COMMAND_CODE_PLAYER_SET_PLAYLIST:I = 0x2716

.field public static final COMMAND_CODE_PLAYER_SET_REPEAT_MODE:I = 0x271b

.field public static final COMMAND_CODE_PLAYER_SET_SHUFFLE_MODE:I = 0x271a

.field public static final COMMAND_CODE_PLAYER_SET_SPEED:I = 0x2714

.field public static final COMMAND_CODE_PLAYER_SET_SURFACE:I = 0x2af8
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation
.end field

.field public static final COMMAND_CODE_PLAYER_SKIP_TO_NEXT_PLAYLIST_ITEM:I = 0x2719

.field public static final COMMAND_CODE_PLAYER_SKIP_TO_PLAYLIST_ITEM:I = 0x2717

.field public static final COMMAND_CODE_PLAYER_SKIP_TO_PREVIOUS_PLAYLIST_ITEM:I = 0x2718

.field public static final COMMAND_CODE_PLAYER_UPDATE_LIST_METADATA:I = 0x2721

.field public static final COMMAND_CODE_SESSION_FAST_FORWARD:I = 0x9c40

.field public static final COMMAND_CODE_SESSION_PLAY_FROM_MEDIA_ID:I = 0x9c44
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation
.end field

.field public static final COMMAND_CODE_SESSION_PLAY_FROM_SEARCH:I = 0x9c45
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation
.end field

.field public static final COMMAND_CODE_SESSION_PLAY_FROM_URI:I = 0x9c46
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation
.end field

.field public static final COMMAND_CODE_SESSION_PREPARE_FROM_MEDIA_ID:I = 0x9c47
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation
.end field

.field public static final COMMAND_CODE_SESSION_PREPARE_FROM_SEARCH:I = 0x9c48
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation
.end field

.field public static final COMMAND_CODE_SESSION_PREPARE_FROM_URI:I = 0x9c49
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation
.end field

.field public static final COMMAND_CODE_SESSION_REWIND:I = 0x9c41

.field public static final COMMAND_CODE_SESSION_SET_RATING:I = 0x9c4a

.field public static final COMMAND_CODE_SESSION_SKIP_BACKWARD:I = 0x9c43

.field public static final COMMAND_CODE_SESSION_SKIP_FORWARD:I = 0x9c42

.field public static final COMMAND_CODE_VOLUME_ADJUST_VOLUME:I = 0x7531

.field public static final COMMAND_CODE_VOLUME_SET_VOLUME:I = 0x7530

.field public static final COMMAND_VERSION_1:I = 0x1

.field public static final COMMAND_VERSION_CURRENT:I = 0x1
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation
.end field

.field static final VERSION_LIBRARY_COMMANDS_MAP:Landroidx/collection/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/ArrayMap<",
            "Ljava/lang/Integer;",
            "Landroidx/media2/session/SessionCommand$Range;",
            ">;"
        }
    .end annotation
.end field

.field static final VERSION_PLAYER_BASIC_COMMANDS_MAP:Landroidx/collection/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/ArrayMap<",
            "Ljava/lang/Integer;",
            "Landroidx/media2/session/SessionCommand$Range;",
            ">;"
        }
    .end annotation
.end field

.field static final VERSION_PLAYER_HIDDEN_COMMANDS_MAP:Landroidx/collection/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/ArrayMap<",
            "Ljava/lang/Integer;",
            "Landroidx/media2/session/SessionCommand$Range;",
            ">;"
        }
    .end annotation
.end field

.field static final VERSION_PLAYER_PLAYLIST_COMMANDS_MAP:Landroidx/collection/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/ArrayMap<",
            "Ljava/lang/Integer;",
            "Landroidx/media2/session/SessionCommand$Range;",
            ">;"
        }
    .end annotation
.end field

.field static final VERSION_SESSION_COMMANDS_MAP:Landroidx/collection/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/ArrayMap<",
            "Ljava/lang/Integer;",
            "Landroidx/media2/session/SessionCommand$Range;",
            ">;"
        }
    .end annotation
.end field

.field static final VERSION_VOLUME_COMMANDS_MAP:Landroidx/collection/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/ArrayMap<",
            "Ljava/lang/Integer;",
            "Landroidx/media2/session/SessionCommand$Range;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mCommandCode:I

.field mCustomAction:Ljava/lang/String;

.field mCustomExtras:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 140
    new-instance v0, Landroidx/collection/ArrayMap;

    invoke-direct {v0}, Landroidx/collection/ArrayMap;-><init>()V

    sput-object v0, Landroidx/media2/session/SessionCommand;->VERSION_PLAYER_BASIC_COMMANDS_MAP:Landroidx/collection/ArrayMap;

    .line 141
    new-instance v0, Landroidx/collection/ArrayMap;

    invoke-direct {v0}, Landroidx/collection/ArrayMap;-><init>()V

    sput-object v0, Landroidx/media2/session/SessionCommand;->VERSION_PLAYER_PLAYLIST_COMMANDS_MAP:Landroidx/collection/ArrayMap;

    .line 142
    new-instance v0, Landroidx/collection/ArrayMap;

    invoke-direct {v0}, Landroidx/collection/ArrayMap;-><init>()V

    sput-object v0, Landroidx/media2/session/SessionCommand;->VERSION_PLAYER_HIDDEN_COMMANDS_MAP:Landroidx/collection/ArrayMap;

    .line 386
    sget-object v0, Landroidx/media2/session/SessionCommand;->VERSION_PLAYER_BASIC_COMMANDS_MAP:Landroidx/collection/ArrayMap;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Landroidx/media2/session/SessionCommand$Range;

    const/16 v4, 0x2710

    const/16 v5, 0x2714

    invoke-direct {v3, v4, v5}, Landroidx/media2/session/SessionCommand$Range;-><init>(II)V

    invoke-virtual {v0, v2, v3}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 391
    sget-object v0, Landroidx/media2/session/SessionCommand;->VERSION_PLAYER_PLAYLIST_COMMANDS_MAP:Landroidx/collection/ArrayMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Landroidx/media2/session/SessionCommand$Range;

    const/16 v4, 0x2715

    const/16 v5, 0x2722

    invoke-direct {v3, v4, v5}, Landroidx/media2/session/SessionCommand$Range;-><init>(II)V

    invoke-virtual {v0, v2, v3}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 397
    sget-object v0, Landroidx/media2/session/SessionCommand;->VERSION_PLAYER_HIDDEN_COMMANDS_MAP:Landroidx/collection/ArrayMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Landroidx/media2/session/SessionCommand$Range;

    const/16 v4, 0x2af8

    const/16 v5, 0x2afa

    invoke-direct {v3, v4, v5}, Landroidx/media2/session/SessionCommand$Range;-><init>(II)V

    invoke-virtual {v0, v2, v3}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 404
    new-instance v0, Landroidx/collection/ArrayMap;

    invoke-direct {v0}, Landroidx/collection/ArrayMap;-><init>()V

    sput-object v0, Landroidx/media2/session/SessionCommand;->VERSION_VOLUME_COMMANDS_MAP:Landroidx/collection/ArrayMap;

    .line 432
    sget-object v0, Landroidx/media2/session/SessionCommand;->VERSION_VOLUME_COMMANDS_MAP:Landroidx/collection/ArrayMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Landroidx/media2/session/SessionCommand$Range;

    const/16 v4, 0x7530

    const/16 v5, 0x7531

    invoke-direct {v3, v4, v5}, Landroidx/media2/session/SessionCommand$Range;-><init>(II)V

    invoke-virtual {v0, v2, v3}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 440
    new-instance v0, Landroidx/collection/ArrayMap;

    invoke-direct {v0}, Landroidx/collection/ArrayMap;-><init>()V

    sput-object v0, Landroidx/media2/session/SessionCommand;->VERSION_SESSION_COMMANDS_MAP:Landroidx/collection/ArrayMap;

    .line 532
    sget-object v0, Landroidx/media2/session/SessionCommand;->VERSION_SESSION_COMMANDS_MAP:Landroidx/collection/ArrayMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Landroidx/media2/session/SessionCommand$Range;

    const v4, 0x9c40

    const v5, 0x9c4a

    invoke-direct {v3, v4, v5}, Landroidx/media2/session/SessionCommand$Range;-><init>(II)V

    invoke-virtual {v0, v2, v3}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 539
    new-instance v0, Landroidx/collection/ArrayMap;

    invoke-direct {v0}, Landroidx/collection/ArrayMap;-><init>()V

    sput-object v0, Landroidx/media2/session/SessionCommand;->VERSION_LIBRARY_COMMANDS_MAP:Landroidx/collection/ArrayMap;

    .line 591
    sget-object v0, Landroidx/media2/session/SessionCommand;->VERSION_LIBRARY_COMMANDS_MAP:Landroidx/collection/ArrayMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroidx/media2/session/SessionCommand$Range;

    const v3, 0xc350

    const v4, 0xc356

    invoke-direct {v2, v3, v4}, Landroidx/media2/session/SessionCommand$Range;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 594
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 607
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 608
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "commandCode"    # I

    .line 615
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 616
    if-eqz p1, :cond_0

    .line 619
    iput p1, p0, Landroidx/media2/session/SessionCommand;->mCommandCode:I

    .line 620
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media2/session/SessionCommand;->mCustomAction:Ljava/lang/String;

    .line 621
    iput-object v0, p0, Landroidx/media2/session/SessionCommand;->mCustomExtras:Landroid/os/Bundle;

    .line 622
    return-void

    .line 617
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "commandCode shouldn\'t be COMMAND_CODE_CUSTOM"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "action"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "extras"    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 630
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 631
    if-eqz p1, :cond_0

    .line 634
    const/4 v0, 0x0

    iput v0, p0, Landroidx/media2/session/SessionCommand;->mCommandCode:I

    .line 635
    iput-object p1, p0, Landroidx/media2/session/SessionCommand;->mCustomAction:Ljava/lang/String;

    .line 636
    iput-object p2, p0, Landroidx/media2/session/SessionCommand;->mCustomExtras:Landroid/os/Bundle;

    .line 637
    return-void

    .line 632
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "action shouldn\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .line 665
    instance-of v0, p1, Landroidx/media2/session/SessionCommand;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 666
    return v1

    .line 668
    :cond_0
    move-object v0, p1

    check-cast v0, Landroidx/media2/session/SessionCommand;

    .line 669
    .local v0, "other":Landroidx/media2/session/SessionCommand;
    iget v2, p0, Landroidx/media2/session/SessionCommand;->mCommandCode:I

    iget v3, v0, Landroidx/media2/session/SessionCommand;->mCommandCode:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Landroidx/media2/session/SessionCommand;->mCustomAction:Ljava/lang/String;

    iget-object v3, v0, Landroidx/media2/session/SessionCommand;->mCustomAction:Ljava/lang/String;

    .line 670
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    goto :goto_0

    .line 669
    :cond_2
    nop

    .line 670
    :goto_0
    nop

    .line 669
    :goto_1
    return v1
.end method

.method public getCommandCode()I
    .locals 1

    .line 644
    iget v0, p0, Landroidx/media2/session/SessionCommand;->mCommandCode:I

    return v0
.end method

.method public getCustomAction()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 652
    iget-object v0, p0, Landroidx/media2/session/SessionCommand;->mCustomAction:Ljava/lang/String;

    return-object v0
.end method

.method public getCustomExtras()Landroid/os/Bundle;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 660
    iget-object v0, p0, Landroidx/media2/session/SessionCommand;->mCustomExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 675
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Landroidx/media2/session/SessionCommand;->mCustomAction:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroidx/media2/session/SessionCommand;->mCommandCode:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Landroidx/core/util/ObjectsCompat;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
