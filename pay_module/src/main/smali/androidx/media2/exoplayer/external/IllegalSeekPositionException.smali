.class public final Landroidx/media2/exoplayer/external/IllegalSeekPositionException;
.super Ljava/lang/IllegalStateException;
.source "IllegalSeekPositionException.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# instance fields
.field public final positionMs:J

.field public final timeline:Landroidx/media2/exoplayer/external/Timeline;

.field public final windowIndex:I


# direct methods
.method public constructor <init>(Landroidx/media2/exoplayer/external/Timeline;IJ)V
    .locals 0
    .param p1, "timeline"    # Landroidx/media2/exoplayer/external/Timeline;
    .param p2, "windowIndex"    # I
    .param p3, "positionMs"    # J

    .line 48
    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    .line 49
    iput-object p1, p0, Landroidx/media2/exoplayer/external/IllegalSeekPositionException;->timeline:Landroidx/media2/exoplayer/external/Timeline;

    .line 50
    iput p2, p0, Landroidx/media2/exoplayer/external/IllegalSeekPositionException;->windowIndex:I

    .line 51
    iput-wide p3, p0, Landroidx/media2/exoplayer/external/IllegalSeekPositionException;->positionMs:J

    .line 52
    return-void
.end method
