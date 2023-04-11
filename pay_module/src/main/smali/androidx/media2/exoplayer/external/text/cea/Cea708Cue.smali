.class final Landroidx/media2/exoplayer/external/text/cea/Cea708Cue;
.super Landroidx/media2/exoplayer/external/text/Cue;
.source "Cea708Cue.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/media2/exoplayer/external/text/Cue;",
        "Ljava/lang/Comparable<",
        "Landroidx/media2/exoplayer/external/text/cea/Cea708Cue;",
        ">;"
    }
.end annotation


# static fields
.field public static final PRIORITY_UNSET:I = -0x1


# instance fields
.field public final priority:I


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;FIIFIFZII)V
    .locals 0
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "textAlignment"    # Landroid/text/Layout$Alignment;
    .param p3, "line"    # F
    .param p4, "lineType"    # I
    .param p5, "lineAnchor"    # I
    .param p6, "position"    # F
    .param p7, "positionAnchor"    # I
    .param p8, "size"    # F
    .param p9, "windowColorSet"    # Z
    .param p10, "windowColor"    # I
    .param p11, "priority"    # I

    .line 59
    invoke-direct/range {p0 .. p10}, Landroidx/media2/exoplayer/external/text/Cue;-><init>(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;FIIFIFZI)V

    .line 61
    iput p11, p0, Landroidx/media2/exoplayer/external/text/cea/Cea708Cue;->priority:I

    .line 62
    return-void
.end method


# virtual methods
.method public compareTo(Landroidx/media2/exoplayer/external/text/cea/Cea708Cue;)I
    .locals 2
    .param p1, "other"    # Landroidx/media2/exoplayer/external/text/cea/Cea708Cue;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 66
    iget v0, p1, Landroidx/media2/exoplayer/external/text/cea/Cea708Cue;->priority:I

    iget v1, p0, Landroidx/media2/exoplayer/external/text/cea/Cea708Cue;->priority:I

    if-ge v0, v1, :cond_0

    .line 67
    const/4 v0, -0x1

    return v0

    .line 68
    :cond_0
    if-le v0, v1, :cond_1

    .line 69
    const/4 v0, 0x1

    return v0

    .line 71
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 30
    check-cast p1, Landroidx/media2/exoplayer/external/text/cea/Cea708Cue;

    invoke-virtual {p0, p1}, Landroidx/media2/exoplayer/external/text/cea/Cea708Cue;->compareTo(Landroidx/media2/exoplayer/external/text/cea/Cea708Cue;)I

    move-result p1

    return p1
.end method
