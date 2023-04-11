.class Landroidx/media2/player/subtitle/SubtitleController$2;
.super Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;
.source "SubtitleController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/player/subtitle/SubtitleController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media2/player/subtitle/SubtitleController;


# direct methods
.method constructor <init>(Landroidx/media2/player/subtitle/SubtitleController;)V
    .locals 0
    .param p1, "this$0"    # Landroidx/media2/player/subtitle/SubtitleController;

    .line 84
    iput-object p1, p0, Landroidx/media2/player/subtitle/SubtitleController$2;->this$0:Landroidx/media2/player/subtitle/SubtitleController;

    invoke-direct {p0}, Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onEnabledChanged(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .line 87
    iget-object v0, p0, Landroidx/media2/player/subtitle/SubtitleController$2;->this$0:Landroidx/media2/player/subtitle/SubtitleController;

    invoke-virtual {v0}, Landroidx/media2/player/subtitle/SubtitleController;->selectDefaultTrack()V

    .line 88
    return-void
.end method

.method public onLocaleChanged(Ljava/util/Locale;)V
    .locals 1
    .param p1, "locale"    # Ljava/util/Locale;

    .line 92
    iget-object v0, p0, Landroidx/media2/player/subtitle/SubtitleController$2;->this$0:Landroidx/media2/player/subtitle/SubtitleController;

    invoke-virtual {v0}, Landroidx/media2/player/subtitle/SubtitleController;->selectDefaultTrack()V

    .line 93
    return-void
.end method
