.class final Landroidx/media2/exoplayer/external/text/dvb/DvbParser$ObjectData;
.super Ljava/lang/Object;
.source "DvbParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/exoplayer/external/text/dvb/DvbParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ObjectData"
.end annotation


# instance fields
.field public final bottomFieldData:[B

.field public final id:I

.field public final nonModifyingColorFlag:Z

.field public final topFieldData:[B


# direct methods
.method public constructor <init>(IZ[B[B)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "nonModifyingColorFlag"    # Z
    .param p3, "topFieldData"    # [B
    .param p4, "bottomFieldData"    # [B

    .line 1025
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1026
    iput p1, p0, Landroidx/media2/exoplayer/external/text/dvb/DvbParser$ObjectData;->id:I

    .line 1027
    iput-boolean p2, p0, Landroidx/media2/exoplayer/external/text/dvb/DvbParser$ObjectData;->nonModifyingColorFlag:Z

    .line 1028
    iput-object p3, p0, Landroidx/media2/exoplayer/external/text/dvb/DvbParser$ObjectData;->topFieldData:[B

    .line 1029
    iput-object p4, p0, Landroidx/media2/exoplayer/external/text/dvb/DvbParser$ObjectData;->bottomFieldData:[B

    .line 1030
    return-void
.end method
