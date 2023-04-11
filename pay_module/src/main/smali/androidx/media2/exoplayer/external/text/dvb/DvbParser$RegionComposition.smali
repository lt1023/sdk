.class final Landroidx/media2/exoplayer/external/text/dvb/DvbParser$RegionComposition;
.super Ljava/lang/Object;
.source "DvbParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/exoplayer/external/text/dvb/DvbParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "RegionComposition"
.end annotation


# instance fields
.field public final clutId:I

.field public final depth:I

.field public final fillFlag:Z

.field public final height:I

.field public final id:I

.field public final levelOfCompatibility:I

.field public final pixelCode2Bit:I

.field public final pixelCode4Bit:I

.field public final pixelCode8Bit:I

.field public final regionObjects:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroidx/media2/exoplayer/external/text/dvb/DvbParser$RegionObject;",
            ">;"
        }
    .end annotation
.end field

.field public final width:I


# direct methods
.method public constructor <init>(IZIIIIIIIILandroid/util/SparseArray;)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "fillFlag"    # Z
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "levelOfCompatibility"    # I
    .param p6, "depth"    # I
    .param p7, "clutId"    # I
    .param p8, "pixelCode8Bit"    # I
    .param p9, "pixelCode4Bit"    # I
    .param p10, "pixelCode2Bit"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZIIIIIIII",
            "Landroid/util/SparseArray<",
            "Landroidx/media2/exoplayer/external/text/dvb/DvbParser$RegionObject;",
            ">;)V"
        }
    .end annotation

    .line 938
    .local p11, "regionObjects":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroidx/media2/exoplayer/external/text/dvb/DvbParser$RegionObject;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 939
    iput p1, p0, Landroidx/media2/exoplayer/external/text/dvb/DvbParser$RegionComposition;->id:I

    .line 940
    iput-boolean p2, p0, Landroidx/media2/exoplayer/external/text/dvb/DvbParser$RegionComposition;->fillFlag:Z

    .line 941
    iput p3, p0, Landroidx/media2/exoplayer/external/text/dvb/DvbParser$RegionComposition;->width:I

    .line 942
    iput p4, p0, Landroidx/media2/exoplayer/external/text/dvb/DvbParser$RegionComposition;->height:I

    .line 943
    iput p5, p0, Landroidx/media2/exoplayer/external/text/dvb/DvbParser$RegionComposition;->levelOfCompatibility:I

    .line 944
    iput p6, p0, Landroidx/media2/exoplayer/external/text/dvb/DvbParser$RegionComposition;->depth:I

    .line 945
    iput p7, p0, Landroidx/media2/exoplayer/external/text/dvb/DvbParser$RegionComposition;->clutId:I

    .line 946
    iput p8, p0, Landroidx/media2/exoplayer/external/text/dvb/DvbParser$RegionComposition;->pixelCode8Bit:I

    .line 947
    iput p9, p0, Landroidx/media2/exoplayer/external/text/dvb/DvbParser$RegionComposition;->pixelCode4Bit:I

    .line 948
    iput p10, p0, Landroidx/media2/exoplayer/external/text/dvb/DvbParser$RegionComposition;->pixelCode2Bit:I

    .line 949
    iput-object p11, p0, Landroidx/media2/exoplayer/external/text/dvb/DvbParser$RegionComposition;->regionObjects:Landroid/util/SparseArray;

    .line 950
    return-void
.end method


# virtual methods
.method public mergeFrom(Landroidx/media2/exoplayer/external/text/dvb/DvbParser$RegionComposition;)V
    .locals 5
    .param p1, "otherRegionComposition"    # Landroidx/media2/exoplayer/external/text/dvb/DvbParser$RegionComposition;

    .line 953
    if-nez p1, :cond_0

    .line 954
    return-void

    .line 956
    :cond_0
    iget-object v0, p1, Landroidx/media2/exoplayer/external/text/dvb/DvbParser$RegionComposition;->regionObjects:Landroid/util/SparseArray;

    .line 957
    .local v0, "otherRegionObjects":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroidx/media2/exoplayer/external/text/dvb/DvbParser$RegionObject;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 958
    iget-object v2, p0, Landroidx/media2/exoplayer/external/text/dvb/DvbParser$RegionComposition;->regionObjects:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/media2/exoplayer/external/text/dvb/DvbParser$RegionObject;

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 957
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 960
    .end local v1    # "i":I
    :cond_1
    return-void
.end method
