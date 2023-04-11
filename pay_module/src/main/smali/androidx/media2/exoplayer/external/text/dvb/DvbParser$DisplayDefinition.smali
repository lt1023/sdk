.class final Landroidx/media2/exoplayer/external/text/dvb/DvbParser$DisplayDefinition;
.super Ljava/lang/Object;
.source "DvbParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/exoplayer/external/text/dvb/DvbParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DisplayDefinition"
.end annotation


# instance fields
.field public final height:I

.field public final horizontalPositionMaximum:I

.field public final horizontalPositionMinimum:I

.field public final verticalPositionMaximum:I

.field public final verticalPositionMinimum:I

.field public final width:I


# direct methods
.method public constructor <init>(IIIIII)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "horizontalPositionMinimum"    # I
    .param p4, "horizontalPositionMaximum"    # I
    .param p5, "verticalPositionMinimum"    # I
    .param p6, "verticalPositionMaximum"    # I

    .line 867
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 868
    iput p1, p0, Landroidx/media2/exoplayer/external/text/dvb/DvbParser$DisplayDefinition;->width:I

    .line 869
    iput p2, p0, Landroidx/media2/exoplayer/external/text/dvb/DvbParser$DisplayDefinition;->height:I

    .line 870
    iput p3, p0, Landroidx/media2/exoplayer/external/text/dvb/DvbParser$DisplayDefinition;->horizontalPositionMinimum:I

    .line 871
    iput p4, p0, Landroidx/media2/exoplayer/external/text/dvb/DvbParser$DisplayDefinition;->horizontalPositionMaximum:I

    .line 872
    iput p5, p0, Landroidx/media2/exoplayer/external/text/dvb/DvbParser$DisplayDefinition;->verticalPositionMinimum:I

    .line 873
    iput p6, p0, Landroidx/media2/exoplayer/external/text/dvb/DvbParser$DisplayDefinition;->verticalPositionMaximum:I

    .line 874
    return-void
.end method
