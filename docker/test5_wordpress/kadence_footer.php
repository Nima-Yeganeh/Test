<?php
namespace Kadence;

if ( ! defined( 'ABSPATH' ) ) {
	exit;
}

do_action( 'kadence_after_content' );
?>
	</div><!-- #inner-wrap -->
	<?php
	?>
</div><!-- #wrapper -->
<?php do_action( 'kadence_after_wrapper' ); ?>

<?php wp_footer(); ?>
</body>
</html>

