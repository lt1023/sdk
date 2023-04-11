.class final Landroidx/media2/exoplayer/external/extractor/mp4/Atom$ContainerAtom;
.super Landroidx/media2/exoplayer/external/extractor/mp4/Atom;
.source "Atom.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/exoplayer/external/extractor/mp4/Atom;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ContainerAtom"
.end annotation


# instance fields
.field public final containerChildren:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/media2/exoplayer/external/extractor/mp4/Atom$ContainerAtom;",
            ">;"
        }
    .end annotation
.end field

.field public final endPosition:J

.field public final leafChildren:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/media2/exoplayer/external/extractor/mp4/Atom$LeafAtom;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(IJ)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "endPosition"    # J

    .line 431
    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/extractor/mp4/Atom;-><init>(I)V

    .line 432
    iput-wide p2, p0, Landroidx/media2/exoplayer/external/extractor/mp4/Atom$ContainerAtom;->endPosition:J

    .line 433
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/Atom$ContainerAtom;->leafChildren:Ljava/util/List;

    .line 434
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/Atom$ContainerAtom;->containerChildren:Ljava/util/List;

    .line 435
    return-void
.end method


# virtual methods
.method public add(Landroidx/media2/exoplayer/external/extractor/mp4/Atom$ContainerAtom;)V
    .locals 1
    .param p1, "atom"    # Landroidx/media2/exoplayer/external/extractor/mp4/Atom$ContainerAtom;

    .line 452
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/Atom$ContainerAtom;->containerChildren:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 453
    return-void
.end method

.method public add(Landroidx/media2/exoplayer/external/extractor/mp4/Atom$LeafAtom;)V
    .locals 1
    .param p1, "atom"    # Landroidx/media2/exoplayer/external/extractor/mp4/Atom$LeafAtom;

    .line 443
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/Atom$ContainerAtom;->leafChildren:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 444
    return-void
.end method

.method public getChildAtomOfTypeCount(I)I
    .locals 5
    .param p1, "type"    # I

    .line 504
    const/4 v0, 0x0

    .line 505
    .local v0, "count":I
    iget-object v1, p0, Landroidx/media2/exoplayer/external/extractor/mp4/Atom$ContainerAtom;->leafChildren:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 506
    .local v1, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 507
    iget-object v3, p0, Landroidx/media2/exoplayer/external/extractor/mp4/Atom$ContainerAtom;->leafChildren:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media2/exoplayer/external/extractor/mp4/Atom$LeafAtom;

    .line 508
    .local v3, "atom":Landroidx/media2/exoplayer/external/extractor/mp4/Atom$LeafAtom;
    iget v4, v3, Landroidx/media2/exoplayer/external/extractor/mp4/Atom$LeafAtom;->type:I

    if-ne v4, p1, :cond_0

    .line 509
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 508
    :cond_0
    nop

    .line 506
    .end local v3    # "atom":Landroidx/media2/exoplayer/external/extractor/mp4/Atom$LeafAtom;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 512
    .end local v2    # "i":I
    :cond_1
    iget-object v2, p0, Landroidx/media2/exoplayer/external/extractor/mp4/Atom$ContainerAtom;->containerChildren:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    .line 513
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_2
    if-ge v2, v1, :cond_3

    .line 514
    iget-object v3, p0, Landroidx/media2/exoplayer/external/extractor/mp4/Atom$ContainerAtom;->containerChildren:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media2/exoplayer/external/extractor/mp4/Atom$ContainerAtom;

    .line 515
    .local v3, "atom":Landroidx/media2/exoplayer/external/extractor/mp4/Atom$ContainerAtom;
    iget v4, v3, Landroidx/media2/exoplayer/external/extractor/mp4/Atom$ContainerAtom;->type:I

    if-ne v4, p1, :cond_2

    .line 516
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 515
    :cond_2
    nop

    .line 513
    .end local v3    # "atom":Landroidx/media2/exoplayer/external/extractor/mp4/Atom$ContainerAtom;
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 519
    .end local v2    # "i":I
    :cond_3
    return v0
.end method

.method public getContainerAtomOfType(I)Landroidx/media2/exoplayer/external/extractor/mp4/Atom$ContainerAtom;
    .locals 4
    .param p1, "type"    # I
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 487
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/Atom$ContainerAtom;->containerChildren:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 488
    .local v0, "childrenSize":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 489
    iget-object v2, p0, Landroidx/media2/exoplayer/external/extractor/mp4/Atom$ContainerAtom;->containerChildren:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media2/exoplayer/external/extractor/mp4/Atom$ContainerAtom;

    .line 490
    .local v2, "atom":Landroidx/media2/exoplayer/external/extractor/mp4/Atom$ContainerAtom;
    iget v3, v2, Landroidx/media2/exoplayer/external/extractor/mp4/Atom$ContainerAtom;->type:I

    if-ne v3, p1, :cond_0

    .line 491
    return-object v2

    .line 490
    :cond_0
    nop

    .line 488
    .end local v2    # "atom":Landroidx/media2/exoplayer/external/extractor/mp4/Atom$ContainerAtom;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 494
    .end local v1    # "i":I
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method public getLeafAtomOfType(I)Landroidx/media2/exoplayer/external/extractor/mp4/Atom$LeafAtom;
    .locals 4
    .param p1, "type"    # I
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 466
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/Atom$ContainerAtom;->leafChildren:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 467
    .local v0, "childrenSize":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 468
    iget-object v2, p0, Landroidx/media2/exoplayer/external/extractor/mp4/Atom$ContainerAtom;->leafChildren:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media2/exoplayer/external/extractor/mp4/Atom$LeafAtom;

    .line 469
    .local v2, "atom":Landroidx/media2/exoplayer/external/extractor/mp4/Atom$LeafAtom;
    iget v3, v2, Landroidx/media2/exoplayer/external/extractor/mp4/Atom$LeafAtom;->type:I

    if-ne v3, p1, :cond_0

    .line 470
    return-object v2

    .line 469
    :cond_0
    nop

    .line 467
    .end local v2    # "atom":Landroidx/media2/exoplayer/external/extractor/mp4/Atom$LeafAtom;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 473
    .end local v1    # "i":I
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 524
    iget v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/Atom$ContainerAtom;->type:I

    invoke-static {v0}, Landroidx/media2/exoplayer/external/extractor/mp4/Atom$ContainerAtom;->getAtomTypeString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Landroidx/media2/exoplayer/external/extractor/mp4/Atom$ContainerAtom;->leafChildren:Ljava/util/List;

    .line 525
    invoke-interface {v1}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroidx/media2/exoplayer/external/extractor/mp4/Atom$ContainerAtom;->containerChildren:Ljava/util/List;

    .line 526
    invoke-interface {v2}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x16

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " leaves: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " containers: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 524
    return-object v0
.end method
