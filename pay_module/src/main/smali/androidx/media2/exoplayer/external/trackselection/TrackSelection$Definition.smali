.class public final Landroidx/media2/exoplayer/external/trackselection/TrackSelection$Definition;
.super Ljava/lang/Object;
.source "TrackSelection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/exoplayer/external/trackselection/TrackSelection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Definition"
.end annotation


# instance fields
.field public final data:Ljava/lang/Object;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final group:Landroidx/media2/exoplayer/external/source/TrackGroup;

.field public final reason:I

.field public final tracks:[I


# direct methods
.method public varargs constructor <init>(Landroidx/media2/exoplayer/external/source/TrackGroup;[I)V
    .locals 2
    .param p1, "group"    # Landroidx/media2/exoplayer/external/source/TrackGroup;
    .param p2, "tracks"    # [I

    .line 63
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Landroidx/media2/exoplayer/external/trackselection/TrackSelection$Definition;-><init>(Landroidx/media2/exoplayer/external/source/TrackGroup;[IILjava/lang/Object;)V

    .line 64
    return-void
.end method

.method public constructor <init>(Landroidx/media2/exoplayer/external/source/TrackGroup;[IILjava/lang/Object;)V
    .locals 0
    .param p1, "group"    # Landroidx/media2/exoplayer/external/source/TrackGroup;
    .param p2, "tracks"    # [I
    .param p3, "reason"    # I
    .param p4, "data"    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object p1, p0, Landroidx/media2/exoplayer/external/trackselection/TrackSelection$Definition;->group:Landroidx/media2/exoplayer/external/source/TrackGroup;

    .line 74
    iput-object p2, p0, Landroidx/media2/exoplayer/external/trackselection/TrackSelection$Definition;->tracks:[I

    .line 75
    iput p3, p0, Landroidx/media2/exoplayer/external/trackselection/TrackSelection$Definition;->reason:I

    .line 76
    iput-object p4, p0, Landroidx/media2/exoplayer/external/trackselection/TrackSelection$Definition;->data:Ljava/lang/Object;

    .line 77
    return-void
.end method
