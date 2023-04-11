.class final Landroidx/media2/exoplayer/external/text/dvb/DvbParser$SubtitleService;
.super Ljava/lang/Object;
.source "DvbParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/exoplayer/external/text/dvb/DvbParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SubtitleService"
.end annotation


# instance fields
.field public final ancillaryCluts:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroidx/media2/exoplayer/external/text/dvb/DvbParser$ClutDefinition;",
            ">;"
        }
    .end annotation
.end field

.field public final ancillaryObjects:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroidx/media2/exoplayer/external/text/dvb/DvbParser$ObjectData;",
            ">;"
        }
    .end annotation
.end field

.field public final ancillaryPageId:I

.field public final cluts:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroidx/media2/exoplayer/external/text/dvb/DvbParser$ClutDefinition;",
            ">;"
        }
    .end annotation
.end field

.field public displayDefinition:Landroidx/media2/exoplayer/external/text/dvb/DvbParser$DisplayDefinition;

.field public final objects:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroidx/media2/exoplayer/external/text/dvb/DvbParser$ObjectData;",
            ">;"
        }
    .end annotation
.end field

.field public pageComposition:Landroidx/media2/exoplayer/external/text/dvb/DvbParser$PageComposition;

.field public final regions:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroidx/media2/exoplayer/external/text/dvb/DvbParser$RegionComposition;",
            ">;"
        }
    .end annotation
.end field

.field public final subtitlePageId:I


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .param p1, "subtitlePageId"    # I
    .param p2, "ancillaryPageId"    # I

    .line 834
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 825
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/text/dvb/DvbParser$SubtitleService;->regions:Landroid/util/SparseArray;

    .line 826
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/text/dvb/DvbParser$SubtitleService;->cluts:Landroid/util/SparseArray;

    .line 827
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/text/dvb/DvbParser$SubtitleService;->objects:Landroid/util/SparseArray;

    .line 828
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/text/dvb/DvbParser$SubtitleService;->ancillaryCluts:Landroid/util/SparseArray;

    .line 829
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/text/dvb/DvbParser$SubtitleService;->ancillaryObjects:Landroid/util/SparseArray;

    .line 835
    iput p1, p0, Landroidx/media2/exoplayer/external/text/dvb/DvbParser$SubtitleService;->subtitlePageId:I

    .line 836
    iput p2, p0, Landroidx/media2/exoplayer/external/text/dvb/DvbParser$SubtitleService;->ancillaryPageId:I

    .line 837
    return-void
.end method


# virtual methods
.method public reset()V
    .locals 1

    .line 840
    iget-object v0, p0, Landroidx/media2/exoplayer/external/text/dvb/DvbParser$SubtitleService;->regions:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 841
    iget-object v0, p0, Landroidx/media2/exoplayer/external/text/dvb/DvbParser$SubtitleService;->cluts:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 842
    iget-object v0, p0, Landroidx/media2/exoplayer/external/text/dvb/DvbParser$SubtitleService;->objects:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 843
    iget-object v0, p0, Landroidx/media2/exoplayer/external/text/dvb/DvbParser$SubtitleService;->ancillaryCluts:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 844
    iget-object v0, p0, Landroidx/media2/exoplayer/external/text/dvb/DvbParser$SubtitleService;->ancillaryObjects:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 845
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media2/exoplayer/external/text/dvb/DvbParser$SubtitleService;->displayDefinition:Landroidx/media2/exoplayer/external/text/dvb/DvbParser$DisplayDefinition;

    .line 846
    iput-object v0, p0, Landroidx/media2/exoplayer/external/text/dvb/DvbParser$SubtitleService;->pageComposition:Landroidx/media2/exoplayer/external/text/dvb/DvbParser$PageComposition;

    .line 847
    return-void
.end method
