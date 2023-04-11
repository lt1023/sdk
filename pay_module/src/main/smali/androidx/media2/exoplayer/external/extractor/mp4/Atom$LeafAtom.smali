.class final Landroidx/media2/exoplayer/external/extractor/mp4/Atom$LeafAtom;
.super Landroidx/media2/exoplayer/external/extractor/mp4/Atom;
.source "Atom.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/exoplayer/external/extractor/mp4/Atom;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "LeafAtom"
.end annotation


# instance fields
.field public final data:Landroidx/media2/exoplayer/external/util/ParsableByteArray;


# direct methods
.method public constructor <init>(ILandroidx/media2/exoplayer/external/util/ParsableByteArray;)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "data"    # Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    .line 411
    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/extractor/mp4/Atom;-><init>(I)V

    .line 412
    iput-object p2, p0, Landroidx/media2/exoplayer/external/extractor/mp4/Atom$LeafAtom;->data:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    .line 413
    return-void
.end method
