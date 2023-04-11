.class final Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;
.super Ljava/lang/Object;
.source "NalUnitTargetBuffer.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# instance fields
.field private isCompleted:Z

.field private isFilling:Z

.field public nalData:[B

.field public nalLength:I

.field private final targetType:I


# direct methods
.method public constructor <init>(II)V
    .locals 3
    .param p1, "targetType"    # I
    .param p2, "initialCapacity"    # I

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput p1, p0, Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;->targetType:I

    .line 45
    add-int/lit8 v0, p2, 0x3

    new-array v0, v0, [B

    iput-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;->nalData:[B

    .line 46
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;->nalData:[B

    const/4 v1, 0x2

    const/4 v2, 0x1

    aput-byte v2, v0, v1

    .line 47
    return-void
.end method


# virtual methods
.method public appendToNalUnit([BII)V
    .locals 5
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .param p3, "limit"    # I

    .line 87
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;->isFilling:Z

    if-nez v0, :cond_0

    .line 88
    return-void

    .line 90
    :cond_0
    sub-int v0, p3, p2

    .line 91
    .local v0, "readLength":I
    iget-object v1, p0, Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;->nalData:[B

    array-length v2, v1

    iget v3, p0, Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    add-int v4, v3, v0

    if-ge v2, v4, :cond_1

    .line 92
    add-int/2addr v3, v0

    mul-int/lit8 v3, v3, 0x2

    invoke-static {v1, v3}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    iput-object v1, p0, Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;->nalData:[B

    goto :goto_0

    .line 91
    :cond_1
    nop

    .line 94
    :goto_0
    iget-object v1, p0, Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;->nalData:[B

    iget v2, p0, Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    invoke-static {p1, p2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 95
    iget v1, p0, Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    add-int/2addr v1, v0

    iput v1, p0, Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    .line 96
    return-void
.end method

.method public endNalUnit(I)Z
    .locals 2
    .param p1, "discardPadding"    # I

    .line 106
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;->isFilling:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 107
    return v1

    .line 109
    :cond_0
    iget v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    sub-int/2addr v0, p1

    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    .line 110
    iput-boolean v1, p0, Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;->isFilling:Z

    .line 111
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;->isCompleted:Z

    .line 112
    return v0
.end method

.method public isCompleted()Z
    .locals 1

    .line 61
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;->isCompleted:Z

    return v0
.end method

.method public reset()V
    .locals 1

    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;->isFilling:Z

    .line 54
    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;->isCompleted:Z

    .line 55
    return-void
.end method

.method public startNalUnit(I)V
    .locals 3
    .param p1, "type"    # I

    .line 70
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;->isFilling:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/Assertions;->checkState(Z)V

    .line 71
    iget v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;->targetType:I

    const/4 v2, 0x0

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;->isFilling:Z

    .line 72
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;->isFilling:Z

    if-eqz v0, :cond_1

    .line 74
    const/4 v0, 0x3

    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    .line 75
    iput-boolean v2, p0, Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;->isCompleted:Z

    goto :goto_1

    .line 72
    :cond_1
    nop

    .line 77
    :goto_1
    return-void
.end method
