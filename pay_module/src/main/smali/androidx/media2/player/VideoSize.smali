.class public final Landroidx/media2/player/VideoSize;
.super Ljava/lang/Object;
.source "VideoSize.java"


# instance fields
.field private final mInternal:Landroidx/media2/common/VideoSize;


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Landroidx/media2/common/VideoSize;

    invoke-direct {v0, p1, p2}, Landroidx/media2/common/VideoSize;-><init>(II)V

    iput-object v0, p0, Landroidx/media2/player/VideoSize;->mInternal:Landroidx/media2/common/VideoSize;

    .line 36
    return-void
.end method

.method constructor <init>(Landroidx/media2/common/VideoSize;)V
    .locals 0
    .param p1, "internal"    # Landroidx/media2/common/VideoSize;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Landroidx/media2/player/VideoSize;->mInternal:Landroidx/media2/common/VideoSize;

    .line 40
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .line 68
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 69
    return v0

    .line 71
    :cond_0
    if-ne p0, p1, :cond_1

    .line 72
    const/4 v0, 0x1

    return v0

    .line 74
    :cond_1
    instance-of v1, p1, Landroidx/media2/player/VideoSize;

    if-eqz v1, :cond_2

    .line 75
    move-object v0, p1

    check-cast v0, Landroidx/media2/player/VideoSize;

    .line 76
    .local v0, "other":Landroidx/media2/player/VideoSize;
    iget-object v1, p0, Landroidx/media2/player/VideoSize;->mInternal:Landroidx/media2/common/VideoSize;

    iget-object v2, v0, Landroidx/media2/player/VideoSize;->mInternal:Landroidx/media2/common/VideoSize;

    invoke-virtual {v1, v2}, Landroidx/media2/common/VideoSize;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 78
    .end local v0    # "other":Landroidx/media2/player/VideoSize;
    :cond_2
    return v0
.end method

.method public getHeight()I
    .locals 1

    .line 53
    iget-object v0, p0, Landroidx/media2/player/VideoSize;->mInternal:Landroidx/media2/common/VideoSize;

    invoke-virtual {v0}, Landroidx/media2/common/VideoSize;->getHeight()I

    move-result v0

    return v0
.end method

.method public getWidth()I
    .locals 1

    .line 46
    iget-object v0, p0, Landroidx/media2/player/VideoSize;->mInternal:Landroidx/media2/common/VideoSize;

    invoke-virtual {v0}, Landroidx/media2/common/VideoSize;->getWidth()I

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 93
    iget-object v0, p0, Landroidx/media2/player/VideoSize;->mInternal:Landroidx/media2/common/VideoSize;

    invoke-virtual {v0}, Landroidx/media2/common/VideoSize;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 88
    iget-object v0, p0, Landroidx/media2/player/VideoSize;->mInternal:Landroidx/media2/common/VideoSize;

    invoke-virtual {v0}, Landroidx/media2/common/VideoSize;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
