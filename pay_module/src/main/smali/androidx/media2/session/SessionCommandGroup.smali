.class public final Landroidx/media2/session/SessionCommandGroup;
.super Ljava/lang/Object;
.source "SessionCommandGroup.java"

# interfaces
.implements Landroidx/versionedparcelable/VersionedParcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/session/SessionCommandGroup$Builder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SessionCommandGroup"


# instance fields
.field mCommands:Ljava/util/Set;
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

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroidx/media2/session/SessionCommandGroup;->mCommands:Ljava/util/Set;

    .line 50
    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .locals 1
    .param p1    # Ljava/util/Collection;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroidx/media2/session/SessionCommand;",
            ">;)V"
        }
    .end annotation

    .line 57
    .local p1, "commands":Ljava/util/Collection;, "Ljava/util/Collection<Landroidx/media2/session/SessionCommand;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroidx/media2/session/SessionCommandGroup;->mCommands:Ljava/util/Set;

    .line 58
    if-eqz p1, :cond_0

    .line 59
    iget-object v0, p0, Landroidx/media2/session/SessionCommandGroup;->mCommands:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 58
    :cond_0
    nop

    .line 61
    :goto_0
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .line 102
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 103
    :cond_0
    instance-of v1, p1, Landroidx/media2/session/SessionCommandGroup;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 105
    :cond_1
    move-object v1, p1

    check-cast v1, Landroidx/media2/session/SessionCommandGroup;

    .line 106
    .local v1, "that":Landroidx/media2/session/SessionCommandGroup;
    iget-object v3, p0, Landroidx/media2/session/SessionCommandGroup;->mCommands:Ljava/util/Set;

    if-nez v3, :cond_3

    .line 107
    iget-object v3, v1, Landroidx/media2/session/SessionCommandGroup;->mCommands:Ljava/util/Set;

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 109
    :cond_3
    iget-object v0, v1, Landroidx/media2/session/SessionCommandGroup;->mCommands:Ljava/util/Set;

    invoke-interface {v3, v0}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getCommands()Ljava/util/Set;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Landroidx/media2/session/SessionCommand;",
            ">;"
        }
    .end annotation

    .line 97
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Landroidx/media2/session/SessionCommandGroup;->mCommands:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public hasCommand(I)Z
    .locals 3
    .param p1, "commandCode"    # I

    .line 82
    if-eqz p1, :cond_2

    .line 85
    iget-object v0, p0, Landroidx/media2/session/SessionCommandGroup;->mCommands:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media2/session/SessionCommand;

    .line 86
    .local v1, "command":Landroidx/media2/session/SessionCommand;
    invoke-virtual {v1}, Landroidx/media2/session/SessionCommand;->getCommandCode()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 87
    const/4 v0, 0x1

    return v0

    .line 86
    :cond_0
    nop

    .line 89
    .end local v1    # "command":Landroidx/media2/session/SessionCommand;
    goto :goto_0

    .line 90
    :cond_1
    const/4 v0, 0x0

    return v0

    .line 83
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Use hasCommand(Command) for custom command"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    return-void
.end method

.method public hasCommand(Landroidx/media2/session/SessionCommand;)Z
    .locals 2
    .param p1, "command"    # Landroidx/media2/session/SessionCommand;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 69
    if-eqz p1, :cond_0

    .line 72
    iget-object v0, p0, Landroidx/media2/session/SessionCommandGroup;->mCommands:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 70
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "command shouldn\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hashCode()I
    .locals 1

    .line 114
    iget-object v0, p0, Landroidx/media2/session/SessionCommandGroup;->mCommands:Ljava/util/Set;

    invoke-static {v0}, Landroidx/core/util/ObjectsCompat;->hashCode(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
