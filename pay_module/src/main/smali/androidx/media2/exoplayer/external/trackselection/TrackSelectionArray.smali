.class public final Landroidx/media2/exoplayer/external/trackselection/TrackSelectionArray;
.super Ljava/lang/Object;
.source "TrackSelectionArray.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# instance fields
.field private hashCode:I

.field public final length:I

.field private final trackSelections:[Landroidx/media2/exoplayer/external/trackselection/TrackSelection;


# direct methods
.method public varargs constructor <init>([Landroidx/media2/exoplayer/external/trackselection/TrackSelection;)V
    .locals 1
    .param p1, "trackSelections"    # [Landroidx/media2/exoplayer/external/trackselection/TrackSelection;

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Landroidx/media2/exoplayer/external/trackselection/TrackSelectionArray;->trackSelections:[Landroidx/media2/exoplayer/external/trackselection/TrackSelection;

    .line 44
    array-length v0, p1

    iput v0, p0, Landroidx/media2/exoplayer/external/trackselection/TrackSelectionArray;->length:I

    .line 45
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 75
    if-ne p0, p1, :cond_0

    .line 76
    const/4 v0, 0x1

    return v0

    .line 78
    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 81
    :cond_1
    move-object v0, p1

    check-cast v0, Landroidx/media2/exoplayer/external/trackselection/TrackSelectionArray;

    .line 82
    .local v0, "other":Landroidx/media2/exoplayer/external/trackselection/TrackSelectionArray;
    iget-object v1, p0, Landroidx/media2/exoplayer/external/trackselection/TrackSelectionArray;->trackSelections:[Landroidx/media2/exoplayer/external/trackselection/TrackSelection;

    iget-object v2, v0, Landroidx/media2/exoplayer/external/trackselection/TrackSelectionArray;->trackSelections:[Landroidx/media2/exoplayer/external/trackselection/TrackSelection;

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 78
    .end local v0    # "other":Landroidx/media2/exoplayer/external/trackselection/TrackSelectionArray;
    :cond_2
    :goto_0
    nop

    .line 79
    const/4 v0, 0x0

    return v0
.end method

.method public get(I)Landroidx/media2/exoplayer/external/trackselection/TrackSelection;
    .locals 1
    .param p1, "index"    # I
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 55
    iget-object v0, p0, Landroidx/media2/exoplayer/external/trackselection/TrackSelectionArray;->trackSelections:[Landroidx/media2/exoplayer/external/trackselection/TrackSelection;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getAll()[Landroidx/media2/exoplayer/external/trackselection/TrackSelection;
    .locals 1

    .line 60
    iget-object v0, p0, Landroidx/media2/exoplayer/external/trackselection/TrackSelectionArray;->trackSelections:[Landroidx/media2/exoplayer/external/trackselection/TrackSelection;

    invoke-virtual {v0}, [Landroidx/media2/exoplayer/external/trackselection/TrackSelection;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/media2/exoplayer/external/trackselection/TrackSelection;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 65
    iget v0, p0, Landroidx/media2/exoplayer/external/trackselection/TrackSelectionArray;->hashCode:I

    if-nez v0, :cond_0

    .line 66
    const/16 v0, 0x11

    .line 67
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroidx/media2/exoplayer/external/trackselection/TrackSelectionArray;->trackSelections:[Landroidx/media2/exoplayer/external/trackselection/TrackSelection;

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    .line 68
    .end local v0    # "result":I
    .local v1, "result":I
    iput v1, p0, Landroidx/media2/exoplayer/external/trackselection/TrackSelectionArray;->hashCode:I

    goto :goto_0

    .line 65
    .end local v1    # "result":I
    :cond_0
    nop

    .line 70
    :goto_0
    iget v0, p0, Landroidx/media2/exoplayer/external/trackselection/TrackSelectionArray;->hashCode:I

    return v0
.end method
