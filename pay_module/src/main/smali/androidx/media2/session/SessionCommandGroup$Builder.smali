.class public final Landroidx/media2/session/SessionCommandGroup$Builder;
.super Ljava/lang/Object;
.source "SessionCommandGroup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/session/SessionCommandGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mCommands:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroidx/media2/session/SessionCommand;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroidx/media2/session/SessionCommandGroup$Builder;->mCommands:Ljava/util/Set;

    .line 125
    return-void
.end method

.method public constructor <init>(Landroidx/media2/session/SessionCommandGroup;)V
    .locals 2
    .param p1, "commandGroup"    # Landroidx/media2/session/SessionCommandGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    if-eqz p1, :cond_0

    .line 136
    invoke-virtual {p1}, Landroidx/media2/session/SessionCommandGroup;->getCommands()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/session/SessionCommandGroup$Builder;->mCommands:Ljava/util/Set;

    .line 137
    return-void

    .line 134
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "commandGroup shouldn\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private addCommands(ILandroidx/collection/ArrayMap;)V
    .locals 4
    .param p1, "version"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroidx/collection/ArrayMap<",
            "Ljava/lang/Integer;",
            "Landroidx/media2/session/SessionCommand$Range;",
            ">;)V"
        }
    .end annotation

    .line 227
    .local p2, "map":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Ljava/lang/Integer;Landroidx/media2/session/SessionCommand$Range;>;"
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    if-gt v0, p1, :cond_1

    .line 228
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media2/session/SessionCommand$Range;

    .line 229
    .local v1, "range":Landroidx/media2/session/SessionCommand$Range;
    iget v2, v1, Landroidx/media2/session/SessionCommand$Range;->lower:I

    .local v2, "code":I
    :goto_1
    iget v3, v1, Landroidx/media2/session/SessionCommand$Range;->upper:I

    if-gt v2, v3, :cond_0

    .line 230
    new-instance v3, Landroidx/media2/session/SessionCommand;

    invoke-direct {v3, v2}, Landroidx/media2/session/SessionCommand;-><init>(I)V

    invoke-virtual {p0, v3}, Landroidx/media2/session/SessionCommandGroup$Builder;->addCommand(Landroidx/media2/session/SessionCommand;)Landroidx/media2/session/SessionCommandGroup$Builder;

    .line 229
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 227
    .end local v1    # "range":Landroidx/media2/session/SessionCommand$Range;
    .end local v2    # "code":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 233
    .end local v0    # "i":I
    :cond_1
    return-void
.end method


# virtual methods
.method addAllLibraryCommands(I)Landroidx/media2/session/SessionCommandGroup$Builder;
    .locals 1
    .param p1, "version"    # I
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 222
    sget-object v0, Landroidx/media2/session/SessionCommand;->VERSION_LIBRARY_COMMANDS_MAP:Landroidx/collection/ArrayMap;

    invoke-direct {p0, p1, v0}, Landroidx/media2/session/SessionCommandGroup$Builder;->addCommands(ILandroidx/collection/ArrayMap;)V

    .line 223
    return-object p0
.end method

.method addAllPlayerBasicCommands(I)Landroidx/media2/session/SessionCommandGroup$Builder;
    .locals 1
    .param p1, "version"    # I
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 197
    sget-object v0, Landroidx/media2/session/SessionCommand;->VERSION_PLAYER_BASIC_COMMANDS_MAP:Landroidx/collection/ArrayMap;

    invoke-direct {p0, p1, v0}, Landroidx/media2/session/SessionCommandGroup$Builder;->addCommands(ILandroidx/collection/ArrayMap;)V

    .line 198
    return-object p0
.end method

.method addAllPlayerCommands(IZ)Landroidx/media2/session/SessionCommandGroup$Builder;
    .locals 0
    .param p1, "version"    # I
    .param p2, "includeHidden"    # Z
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 190
    invoke-virtual {p0, p1}, Landroidx/media2/session/SessionCommandGroup$Builder;->addAllPlayerBasicCommands(I)Landroidx/media2/session/SessionCommandGroup$Builder;

    .line 191
    invoke-virtual {p0, p1}, Landroidx/media2/session/SessionCommandGroup$Builder;->addAllPlayerPlaylistCommands(I)Landroidx/media2/session/SessionCommandGroup$Builder;

    .line 192
    if-eqz p2, :cond_0

    invoke-virtual {p0, p1}, Landroidx/media2/session/SessionCommandGroup$Builder;->addAllPlayerHiddenCommands(I)Landroidx/media2/session/SessionCommandGroup$Builder;

    nop

    .line 193
    :cond_0
    return-object p0
.end method

.method addAllPlayerHiddenCommands(I)Landroidx/media2/session/SessionCommandGroup$Builder;
    .locals 1
    .param p1, "version"    # I
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 207
    sget-object v0, Landroidx/media2/session/SessionCommand;->VERSION_PLAYER_HIDDEN_COMMANDS_MAP:Landroidx/collection/ArrayMap;

    invoke-direct {p0, p1, v0}, Landroidx/media2/session/SessionCommandGroup$Builder;->addCommands(ILandroidx/collection/ArrayMap;)V

    .line 208
    return-object p0
.end method

.method addAllPlayerPlaylistCommands(I)Landroidx/media2/session/SessionCommandGroup$Builder;
    .locals 1
    .param p1, "version"    # I
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 202
    sget-object v0, Landroidx/media2/session/SessionCommand;->VERSION_PLAYER_PLAYLIST_COMMANDS_MAP:Landroidx/collection/ArrayMap;

    invoke-direct {p0, p1, v0}, Landroidx/media2/session/SessionCommandGroup$Builder;->addCommands(ILandroidx/collection/ArrayMap;)V

    .line 203
    return-object p0
.end method

.method public addAllPredefinedCommands(I)Landroidx/media2/session/SessionCommandGroup$Builder;
    .locals 3
    .param p1, "version"    # I
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 166
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 169
    invoke-virtual {p0, p1, v0}, Landroidx/media2/session/SessionCommandGroup$Builder;->addAllPlayerCommands(IZ)Landroidx/media2/session/SessionCommandGroup$Builder;

    .line 170
    invoke-virtual {p0, p1}, Landroidx/media2/session/SessionCommandGroup$Builder;->addAllVolumeCommands(I)Landroidx/media2/session/SessionCommandGroup$Builder;

    .line 171
    invoke-virtual {p0, p1}, Landroidx/media2/session/SessionCommandGroup$Builder;->addAllSessionCommands(I)Landroidx/media2/session/SessionCommandGroup$Builder;

    .line 172
    invoke-virtual {p0, p1}, Landroidx/media2/session/SessionCommandGroup$Builder;->addAllLibraryCommands(I)Landroidx/media2/session/SessionCommandGroup$Builder;

    .line 173
    return-object p0

    .line 167
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown command version "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method addAllSessionCommands(I)Landroidx/media2/session/SessionCommandGroup$Builder;
    .locals 1
    .param p1, "version"    # I
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 217
    sget-object v0, Landroidx/media2/session/SessionCommand;->VERSION_SESSION_COMMANDS_MAP:Landroidx/collection/ArrayMap;

    invoke-direct {p0, p1, v0}, Landroidx/media2/session/SessionCommandGroup$Builder;->addCommands(ILandroidx/collection/ArrayMap;)V

    .line 218
    return-object p0
.end method

.method addAllVolumeCommands(I)Landroidx/media2/session/SessionCommandGroup$Builder;
    .locals 1
    .param p1, "version"    # I
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 212
    sget-object v0, Landroidx/media2/session/SessionCommand;->VERSION_VOLUME_COMMANDS_MAP:Landroidx/collection/ArrayMap;

    invoke-direct {p0, p1, v0}, Landroidx/media2/session/SessionCommandGroup$Builder;->addCommands(ILandroidx/collection/ArrayMap;)V

    .line 213
    return-object p0
.end method

.method public addCommand(Landroidx/media2/session/SessionCommand;)Landroidx/media2/session/SessionCommandGroup$Builder;
    .locals 2
    .param p1, "command"    # Landroidx/media2/session/SessionCommand;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 145
    if-eqz p1, :cond_0

    .line 148
    iget-object v0, p0, Landroidx/media2/session/SessionCommandGroup$Builder;->mCommands:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 149
    return-object p0

    .line 146
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "command shouldn\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public build()Landroidx/media2/session/SessionCommandGroup;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 241
    new-instance v0, Landroidx/media2/session/SessionCommandGroup;

    iget-object v1, p0, Landroidx/media2/session/SessionCommandGroup$Builder;->mCommands:Ljava/util/Set;

    invoke-direct {v0, v1}, Landroidx/media2/session/SessionCommandGroup;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public removeCommand(Landroidx/media2/session/SessionCommand;)Landroidx/media2/session/SessionCommandGroup$Builder;
    .locals 2
    .param p1, "command"    # Landroidx/media2/session/SessionCommand;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 182
    if-eqz p1, :cond_0

    .line 185
    iget-object v0, p0, Landroidx/media2/session/SessionCommandGroup$Builder;->mCommands:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 186
    return-object p0

    .line 183
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "command shouldn\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
